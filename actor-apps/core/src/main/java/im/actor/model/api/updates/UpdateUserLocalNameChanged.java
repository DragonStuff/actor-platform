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
import im.actor.model.droidkit.bser.DataOutput;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateUserLocalNameChanged extends Update {

    public static final int HEADER = 0x33;
    public static UpdateUserLocalNameChanged fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateUserLocalNameChanged(), data);
    }

    private int uid;
    private String localName;

    public UpdateUserLocalNameChanged(int uid, @Nullable String localName) {
        this.uid = uid;
        this.localName = localName;
    }

    public UpdateUserLocalNameChanged() {

    }

    public int getUid() {
        return this.uid;
    }

    @Nullable
    public String getLocalName() {
        return this.localName;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.uid = values.getInt(1);
        this.localName = values.optString(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.uid);
        if (this.localName != null) {
            writer.writeString(2, this.localName);
        }
    }

    @Override
    public String toString() {
        String res = "update UserLocalNameChanged{";
        res += "uid=" + this.uid;
        res += ", localName=" + this.localName;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
