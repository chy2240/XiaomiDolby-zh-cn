.class public final Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    .line 111
    new-instance p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    return-object p0
.end method
