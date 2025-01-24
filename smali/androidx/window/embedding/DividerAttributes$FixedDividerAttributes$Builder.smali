.class public final Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# instance fields
.field private color:I

.field private widthDp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    const/high16 v0, -0x1000000

    .line 76
    iput v0, p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;
    .locals 3

    .line 117
    new-instance v0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setColor(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;
    .locals 1

    .line 110
    sget-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    .line 111
    iput p1, p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    return-object p0
.end method

.method public final setWidthDp(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;
    .locals 1

    .line 99
    sget-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    .line 100
    iput p1, p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    return-object p0
.end method
