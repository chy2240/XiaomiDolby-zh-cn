.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private mIconSize:I

.field mRestrictedSwitchSummary:Ljava/lang/CharSequence;

.field mUseAdditionalSummary:Z


# direct methods
.method public static synthetic $r8$lambda$emIDDCAPjpGtOMMEoZCvLH4hAso(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->lambda$getUpdatableEnterpriseString$0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 94
    sget v0, Landroidx/preference/R$attr;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 51
    iput-boolean p3, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 58
    new-instance p4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {p4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_3

    .line 60
    sget-object p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 62
    sget p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 65
    iget v0, p4, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget p4, p4, Landroid/util/TypedValue;->data:I

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    iput-boolean p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 70
    :cond_1
    sget p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p4, :cond_3

    .line 73
    iget p2, p4, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 75
    iget p2, p4, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 79
    :cond_2
    iget-object p1, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 83
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz p1, :cond_4

    .line 84
    sget p1, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 85
    invoke-virtual {p0, p3}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_4
    return-void
.end method

.method private static getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 169
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUpdatableEnterpriseString$0(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method public isDisabledByEcm()Z
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByEcm()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 188
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 112
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 113
    sget v0, Landroidx/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 123
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Settings.ENABLED_BY_ADMIN_SWITCH_SUMMARY"

    sget v2, Lcom/android/settingslib/widget/restricted/R$string;->enabled_by_admin:I

    .line 124
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Settings.DISABLED_BY_ADMIN_SWITCH_SUMMARY"

    sget v2, Lcom/android/settingslib/widget/restricted/R$string;->disabled_by_admin:I

    .line 127
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_2
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 136
    iget v2, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mIconSize:I

    if-lez v2, :cond_3

    .line 137
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mIconSize:I

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :cond_3
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 141
    sget v1, Lcom/android/settingslib/R$id;->additional_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 144
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 p0, 0x8

    .line 148
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const v1, 0x1020010

    .line 152
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 154
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setAppOps(Landroid/app/AppOpsManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByEcm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByEcm(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 222
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
