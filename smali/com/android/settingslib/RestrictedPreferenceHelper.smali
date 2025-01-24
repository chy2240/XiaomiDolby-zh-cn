.class public Lcom/android/settingslib/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private mAttrUserRestriction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mDisabledByEcm:Z

.field private mDisabledByEcmIntent:Landroid/content/Intent;

.field private mDisabledSummary:Z

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mPreference:Landroidx/preference/Preference;

.field packageName:Ljava/lang/String;

.field uid:I


# direct methods
.method public static synthetic $r8$lambda$s0EnFkoC0zwJ3Ea8Rb_X3fO9hcY(Lcom/android/settingslib/RestrictedPreferenceHelper;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->lambda$getDisabledByAdminUpdatableString$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledSummary:Z

    .line 66
    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcmIntent:Landroid/content/Intent;

    .line 70
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 72
    iput-object p4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->packageName:Ljava/lang/String;

    .line 73
    iput p5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->uid:I

    if-eqz p3, :cond_5

    .line 76
    sget-object p2, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    sget p3, Lcom/android/settingslib/R$styleable;->RestrictedPreference_userRestriction:I

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 81
    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/4 p5, 0x3

    if-ne p4, p5, :cond_1

    .line 82
    iget p4, p3, Landroid/util/TypedValue;->resourceId:I

    if-eqz p4, :cond_0

    .line 83
    invoke-virtual {p1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0

    .line 85
    :cond_0
    iget-object p3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_2

    move-object p3, v0

    goto :goto_1

    .line 88
    :cond_2
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p4

    .line 90
    invoke-static {p1, p3, p4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    return-void

    .line 96
    :cond_3
    sget p1, Lcom/android/settingslib/R$styleable;->RestrictedPreference_useAdminDisabledSummary:I

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 99
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_4

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledSummary:Z

    :cond_5
    return-void
.end method

.method private getDisabledByAdminUpdatableString()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/RestrictedPreferenceHelper;)V

    const-string p0, "Settings.CONTROLLED_BY_ADMIN_SUMMARY"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDisabledByAdminUpdatableString$0()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->disabled_by_admin_summary_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDisabledState()V
    .locals 3

    .line 280
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    instance-of v2, v1, Lcom/android/settingslib/RestrictedTopLevelPreference;

    if-nez v2, :cond_1

    .line 282
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    instance-of v2, v1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v2, :cond_2

    .line 286
    check-cast v1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    :cond_2
    if-nez v0, :cond_3

    .line 289
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eqz v0, :cond_3

    .line 290
    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settingslib/R$string;->disabled_by_app_ops_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 267
    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    return p0
.end method

.method public isDisabledByEcm()Z
    .locals 0

    .line 271
    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    return p0
.end method

.method public onAttachedToHierarchy()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 115
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledSummary:Z

    if-eqz v0, :cond_4

    const v0, 0x1020010

    .line 119
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->getDisabledByAdminUpdatableString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eqz p0, :cond_3

    .line 128
    sget p0, Lcom/android/settingslib/R$string;->disabled_by_app_ops_text:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 131
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v1

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcmIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z
    .locals 3

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 233
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iput-object v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 237
    :goto_0
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eq v2, p1, :cond_1

    .line 238
    iput-boolean p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 240
    invoke-direct {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->updateDisabledState()V

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public setDisabledByEcm(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 256
    :goto_0
    iget-boolean v3, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eq v3, v2, :cond_1

    .line 257
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcmIntent:Landroid/content/Intent;

    .line 258
    iput-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    .line 260
    invoke-direct {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->updateDisabledState()V

    move v0, v1

    :cond_1
    return v0
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledSummary:Z

    return-void
.end method
