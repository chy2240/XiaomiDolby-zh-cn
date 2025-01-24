.class public abstract Landroidx/window/embedding/DividerAttributes$DragRange;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# static fields
.field public static final Companion:Landroidx/window/embedding/DividerAttributes$DragRange$Companion;

.field public static final DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/DividerAttributes$DragRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/DividerAttributes$DragRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/DividerAttributes$DragRange;->Companion:Landroidx/window/embedding/DividerAttributes$DragRange$Companion;

    .line 341
    new-instance v0, Landroidx/window/embedding/DividerAttributes$DragRange$Companion$DRAG_RANGE_SYSTEM_DEFAULT$1;

    invoke-direct {v0}, Landroidx/window/embedding/DividerAttributes$DragRange$Companion$DRAG_RANGE_SYSTEM_DEFAULT$1;-><init>()V

    sput-object v0, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$DragRange;-><init>()V

    return-void
.end method
