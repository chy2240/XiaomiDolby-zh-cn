.class public Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;
.super Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.source "RestrictedSelectorWithWidgetPreference.java"


# instance fields
.field private mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 105
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 92
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
