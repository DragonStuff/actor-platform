/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.viewmodel;

import im.actor.model.modules.Modules;
import im.actor.model.mvvm.ValueModel;

/**
 * Application initialization View Model
 */
public class AppStateVM {
    private Modules modules;
    private ValueModel<Boolean> isDialogsEmpty;
    private ValueModel<Boolean> isContactsEmpty;
    private ValueModel<Boolean> isAppEmpty;
    private ValueModel<Boolean> isAppLoaded;

    private boolean isBookImported;
    private boolean isDialogsLoaded;
    private boolean isContactsLoaded;

    /**
     * Constructor of View Model
     *
     * @param modules Messenger modules
     */
    public AppStateVM(Modules modules) {
        this.modules = modules;
        this.isDialogsEmpty = new ValueModel<Boolean>("app.dialogs.empty", modules.getPreferences().getBool("app.dialogs.empty", true));
        this.isContactsEmpty = new ValueModel<Boolean>("app.contacts.empty", modules.getPreferences().getBool("app.contacts.empty", true));
        this.isAppEmpty = new ValueModel<Boolean>("app.empty", modules.getPreferences().getBool("app.empty", true));

        this.isBookImported = modules.getPreferences().getBool("app.contacts.imported", false);
        this.isDialogsLoaded = modules.getPreferences().getBool("app.dialogs.loaded", false);
        this.isContactsLoaded = modules.getPreferences().getBool("app.contacts.loaded", false);

        this.isAppLoaded = new ValueModel<Boolean>("app.loaded", isBookImported && isDialogsLoaded && isContactsLoaded);
    }

    private void updateLoaded() {
        boolean val = isBookImported && isDialogsLoaded && isContactsLoaded;
        if (isAppLoaded.get() != val) {
            this.isAppLoaded.change(val);
        }
    }

    /**
     * Notify from Modules about dialogs state changed
     *
     * @param isEmpty is dialogs empty
     */
    public synchronized void onDialogsChanged(boolean isEmpty) {
        if (isDialogsEmpty.get() != isEmpty) {
            modules.getPreferences().putBool("app.dialogs.empty", isEmpty);
            isDialogsEmpty.change(isEmpty);
        }
        if (!isEmpty) {
            if (isAppEmpty.get()) {
                modules.getPreferences().putBool("app.empty", false);
                isAppEmpty.change(false);
            }
        }
    }

    /**
     * Notify from Modules about contacts state changed
     *
     * @param isEmpty is contacts empty
     */
    public synchronized void onContactsChanged(boolean isEmpty) {
        if (isContactsEmpty.get() != isEmpty) {
            modules.getPreferences().putBool("app.contacts.empty", isEmpty);
            isContactsEmpty.change(isEmpty);
        }
        if (!isEmpty) {
            if (isAppEmpty.get()) {
                modules.getPreferences().putBool("app.empty", false);
                isAppEmpty.change(false);
            }
        }
    }

    /**
     * Notify from Modules about phone import completed
     */
    public synchronized void onPhoneImported() {
        if (!isBookImported) {
            isBookImported = true;
            modules.getPreferences().putBool("app.contacts.imported", true);
            updateLoaded();
        }
    }

    /**
     * Notify from Modules about dialog load completed
     */
    public synchronized void onDialogsLoaded() {
        if (!isDialogsLoaded) {
            isDialogsLoaded = true;
            modules.getPreferences().putBool("app.dialogs.loaded", true);
            updateLoaded();
        }
    }

    /**
     * Notify from Modules about contacts load completed
     */
    public synchronized void onContactsLoaded() {
        if (!isContactsLoaded) {
            isContactsLoaded = true;
            modules.getPreferences().putBool("app.contacts.loaded", true);
            updateLoaded();
        }
    }

    /**
     * Dialogs empty View Model
     *
     * @return Value Model of Boolean
     */
    public ValueModel<Boolean> getIsDialogsEmpty() {
        return isDialogsEmpty;
    }

    /**
     * Contacts empty View Model
     *
     * @return Value Model of Boolean
     */
    public ValueModel<Boolean> getIsContactsEmpty() {
        return isContactsEmpty;
    }

    /**
     * App loaded View Model
     *
     * @return Value Model of Boolean
     */
    public ValueModel<Boolean> getIsAppLoaded() {
        return isAppLoaded;
    }

    /**
     * App empty View Model
     *
     * @return View Model of Boolean
     */
    public ValueModel<Boolean> getIsAppEmpty() {
        return isAppEmpty;
    }
}
