package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;

public abstract class Message extends BserObject {
    public static Message fromBytes(byte[] src) throws IOException {
        DataInput input = new DataInput(src, 0, src.length);
        int key = input.readVarInt32();
        byte[] content = input.readProtoBytes();
        switch(key) { 
            case 1: return Bser.parse(new TextMessage(), content);
            case 2: return Bser.parse(new ServiceMessage(), content);
            case 3: return Bser.parse(new DocumentMessage(), content);
            default: return new MessageUnsupported(key, content);
        }
    }
    public abstract int getHeader();

    public byte[] buildContainer() throws IOException {
        DataOutput res = new DataOutput();
        BserWriter writer = new BserWriter(res);
        writer.writeInt(1, getHeader());
        writer.writeBytes(2, toByteArray());
        return res.toByteArray();
    }

}
