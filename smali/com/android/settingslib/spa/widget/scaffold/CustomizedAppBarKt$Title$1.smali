.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomizedAppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    const-string p0, "$this$semantics"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->heading(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    return-void
.end method
