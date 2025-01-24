.class public abstract Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;
.super Ljava/lang/Object;
.source "StylusHandwriting.android.kt"


# static fields
.field private static final isStylusHandwritingSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->isStylusHandwritingSupported:Z

    return-void
.end method

.method public static final isStylusHandwritingSupported()Z
    .locals 1

    .line 21
    sget-boolean v0, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->isStylusHandwritingSupported:Z

    return v0
.end method
