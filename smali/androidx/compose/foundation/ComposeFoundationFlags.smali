.class public final Landroidx/compose/foundation/ComposeFoundationFlags;
.super Ljava/lang/Object;
.source "ComposeFoundationFlags.kt"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/ComposeFoundationFlags;

.field public static NewNestedFlingPropagationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/ComposeFoundationFlags;

    invoke-direct {v0}, Landroidx/compose/foundation/ComposeFoundationFlags;-><init>()V

    sput-object v0, Landroidx/compose/foundation/ComposeFoundationFlags;->INSTANCE:Landroidx/compose/foundation/ComposeFoundationFlags;

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->NewNestedFlingPropagationEnabled:Z

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/ComposeFoundationFlags;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
