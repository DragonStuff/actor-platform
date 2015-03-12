package im.actor.server.session

import akka.actor._
import akka.stream.actor._
import akka.stream.scaladsl._

import im.actor.server.mtproto.protocol.MessageBox

import scala.annotation.tailrec
import scala.collection.immutable

private[session] object SessionMessagePublisher {
  def props() = Props[SessionMessagePublisher]
}

private[session] class SessionMessagePublisher extends ActorPublisher[SessionStream.SessionStreamMessage] {
  import ActorPublisherMessage._
  import SessionStream._

  // TODO: MaxQueueSize
  var messageQueue = immutable.Queue.empty[SessionStreamMessage]

  def receive = {
    case mb: MessageBox =>
      if (messageQueue.isEmpty && totalDemand > 0)
        onNext(HandleMessageBox(mb))
      else {
        messageQueue = messageQueue.enqueue(HandleMessageBox(mb))
        deliverBuf()
      }
    case Request(_) =>
      deliverBuf()
    case Cancel =>
      context.stop(self)
  }

  @tailrec final def deliverBuf(): Unit =
    if (isActive && totalDemand > 0)
      messageQueue.dequeueOption match {
        case Some((el, queue)) =>
          messageQueue = queue
          onNext(el)
          deliverBuf()
        case None =>
      }
}