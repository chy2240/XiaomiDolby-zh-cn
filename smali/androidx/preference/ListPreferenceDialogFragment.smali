.class public Landroidx/preference/ListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "ListPreferenceDialogFragment.java"


# instance fields
.field mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getListPreference()Landroidx/preference/ListPreference;
    .locals 0

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragment;
    .locals 3

    .line 53
    new-instance v0, Landroidx/preference/ListPreferenceDialogFragment;

    invoke-direct {v0}, Landroidx/preference/ListPreferenceDialogFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 55
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 64
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;->getListPreference()Landroidx/preference/ListPreference;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 72
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 76
    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 77
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;->getListPreference()Landroidx/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 123
    iget p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_0

    .line 124
    iget-object p0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 97
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    new-instance v2, Landroidx/preference/ListPreferenceDialogFragment$1;

    invoke-direct {v2, p0}, Landroidx/preference/ListPreferenceDialogFragment$1;-><init>(Landroidx/preference/ListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 113
    invoke-virtual {p1, p0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 86
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object p0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
