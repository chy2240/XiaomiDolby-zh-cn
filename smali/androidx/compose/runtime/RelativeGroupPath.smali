.class final Landroidx/compose/runtime/RelativeGroupPath;
.super Landroidx/compose/runtime/SourceInformationGroupPath;
.source "SlotTable.kt"


# instance fields
.field private final index:I

.field private final parent:Landroidx/compose/runtime/SourceInformationGroupPath;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SourceInformationGroupPath;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3313
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SourceInformationGroupPath;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3312
    iput-object p1, p0, Landroidx/compose/runtime/RelativeGroupPath;->parent:Landroidx/compose/runtime/SourceInformationGroupPath;

    iput p2, p0, Landroidx/compose/runtime/RelativeGroupPath;->index:I

    return-void
.end method
