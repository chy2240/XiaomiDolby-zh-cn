.class public abstract Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;
.super Ljava/lang/Object;
.source "EmojiCompatStatus.android.kt"


# static fields
.field private static final Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroidx/compose/ui/text/platform/ImmutableBool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/platform/ImmutableBool;-><init>(Z)V

    sput-object v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    return-void
.end method

.method public static final synthetic access$getFalsey$p()Landroidx/compose/ui/text/platform/ImmutableBool;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    return-object v0
.end method
