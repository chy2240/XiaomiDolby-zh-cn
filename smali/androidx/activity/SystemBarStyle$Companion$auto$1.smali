.class final Landroidx/activity/SystemBarStyle$Companion$auto$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EdgeToEdge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/activity/SystemBarStyle$Companion$auto$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/activity/SystemBarStyle$Companion$auto$1;

    invoke-direct {v0}, Landroidx/activity/SystemBarStyle$Companion$auto$1;-><init>()V

    sput-object v0, Landroidx/activity/SystemBarStyle$Companion$auto$1;->INSTANCE:Landroidx/activity/SystemBarStyle$Companion$auto$1;

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
.method public final invoke(Landroid/content/res/Resources;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "resources"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroidx/activity/SystemBarStyle$Companion$auto$1;->invoke(Landroid/content/res/Resources;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
