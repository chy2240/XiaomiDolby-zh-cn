.class public Lcom/android/settingslib/RestrictedDropDownPreference;
.super Landroidx/preference/DropDownPreference;
.source "RestrictedDropDownPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;


# virtual methods
.method public isDisabledByEcm()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/RestrictedDropDownPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByEcm()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/RestrictedDropDownPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/RestrictedDropDownPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedDropDownPreference;->isDisabledByEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/RestrictedDropDownPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByEcm(Landroid/content/Intent;)Z

    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
