.class final Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SemanticsProperties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, Landroidx/compose/ui/semantics/Role;

    check-cast p2, Landroidx/compose/ui/semantics/Role;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;->invoke-qtA-w6s(Landroidx/compose/ui/semantics/Role;I)Landroidx/compose/ui/semantics/Role;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-qtA-w6s(Landroidx/compose/ui/semantics/Role;I)Landroidx/compose/ui/semantics/Role;
    .locals 0

    .line 0
    return-object p1
.end method
