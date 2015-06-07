package im.actor.server.enrich

import com.typesafe.config.Config

case class RichMessageConfig(maxSize: Long)

object RichMessageConfig {
  def fromConfig(config: Config): RichMessageConfig = {
    RichMessageConfig.apply(config.getBytes("preview-max-size"))
  }
}