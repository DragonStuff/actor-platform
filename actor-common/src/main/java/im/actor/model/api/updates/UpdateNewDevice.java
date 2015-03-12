package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateNewDevice extends Update {

    public static final int HEADER = 0x2;
    public static UpdateNewDevice fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateNewDevice(), data);
    }

    private int uid;
    private long keyHash;
    private byte[] key;
    private long date;

    public UpdateNewDevice(int uid, long keyHash, byte[] key, long date) {
        this.uid = uid;
        this.keyHash = keyHash;
        this.key = key;
        this.date = date;
    }

    public UpdateNewDevice() {

    }

    public int getUid() {
        return this.uid;
    }

    public long getKeyHash() {
        return this.keyHash;
    }

    public byte[] getKey() {
        return this.key;
    }

    public long getDate() {
        return this.date;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.uid = values.getInt(1);
        this.keyHash = values.getLong(2);
        this.key = values.optBytes(3);
        this.date = values.getLong(4);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.uid);
        writer.writeLong(2, this.keyHash);
        if (this.key != null) {
            writer.writeBytes(3, this.key);
        }
        writer.writeLong(4, this.date);
    }

    @Override
    public String toString() {
        String res = "update NewDevice{";
        res += "uid=" + this.uid;
        res += ", keyHash=" + this.keyHash;
        res += ", key=" + byteArrayToStringCompact(this.key);
        res += ", date=" + this.date;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}