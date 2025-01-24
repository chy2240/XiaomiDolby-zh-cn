.class public Landroidx/navigation/NavigatorProvider;
.super Ljava/lang/Object;
.source "NavigatorProvider.kt"


# static fields
.field public static final Companion:Landroidx/navigation/NavigatorProvider$Companion;

.field private static final annotationNames:Ljava/util/Map;


# instance fields
.field private final _navigators:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavigatorProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavigatorProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/navigation/NavigatorProvider;->annotationNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAnnotationNames$cp()Ljava/util/Map;
    .locals 1

    .line 27
    sget-object v0, Landroidx/navigation/NavigatorProvider;->annotationNames:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 2

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider$Companion;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider$Companion;->validateName$navigation_common_release(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/Navigator;

    .line 103
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    const-string v2, "Navigator "

    if-nez v1, :cond_3

    .line 109
    invoke-virtual {p2}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object p0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/Navigator;

    return-object p0

    .line 110
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to another NavController"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is replacing an already attached "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "navigator name cannot be an empty string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNavigators()Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
