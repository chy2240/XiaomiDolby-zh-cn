.class public abstract Landroidx/navigation/Navigator;
.super Ljava/lang/Object;
.source "Navigator.kt"


# instance fields
.field private isAttached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAttached()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Landroidx/navigation/Navigator;->isAttached:Z

    return p0
.end method

.method public onSaveState()Landroid/os/Bundle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
