.class Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;
.super Landroid/database/ContentObserver;
.source "PartnerConfigHelper.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1201
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1202
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resetInstance()V

    return-void
.end method
