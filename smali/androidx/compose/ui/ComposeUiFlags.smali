.class public final Landroidx/compose/ui/ComposeUiFlags;
.super Ljava/lang/Object;
.source "ComposeUiFlags.kt"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/ComposeUiFlags;

.field public static isRectTrackingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/ComposeUiFlags;

    invoke-direct {v0}, Landroidx/compose/ui/ComposeUiFlags;-><init>()V

    sput-object v0, Landroidx/compose/ui/ComposeUiFlags;->INSTANCE:Landroidx/compose/ui/ComposeUiFlags;

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isRectTrackingEnabled:Z

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/ComposeUiFlags;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
