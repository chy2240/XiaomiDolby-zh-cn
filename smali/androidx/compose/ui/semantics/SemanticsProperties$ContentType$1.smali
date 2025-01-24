.class final Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SemanticsProperties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;

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
.method public final invoke(Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/ui/autofill/ContentType;)Landroidx/compose/ui/autofill/ContentType;
    .locals 0

    .line 0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-static {p1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;->invoke(Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/ui/autofill/ContentType;)Landroidx/compose/ui/autofill/ContentType;

    return-object p1
.end method
