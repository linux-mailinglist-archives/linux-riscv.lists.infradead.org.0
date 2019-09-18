Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662DFB6951
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 19:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q7nwRfac2RNoQ60ZsijVnYrkUW/Ai5vWSS4vyU0K99I=; b=YWT7fOtC7OjCm5
	/Jjl89kmPScoJ7RSRUHiQDyDA19Cm6LHLrVw38eUenbTUFaczu6CZucX9S/TlVsgcmtS4lshchHqQ
	DEfBUQ36kQSvnh1OxG05V2sv8V0EkAKe0Vw6MW7blwwGOjuQ0fM/A7aAxG5NUBVWKWD2vRoAgOY8u
	ZjS0WYQrTxOXcVlxYdGwd1ILCcSv7KFJaWayiQA9pcjFA9VZ/c60PRnJp0eNnepOBOqa0ywV2O8Um
	pPbKe3qDy6lKWNxt5czWKhs8BiVa9oY5BuUDRYZZR+HEe6vWO6EMQQQwQZoeyP/HTksIc5XEcPRpe
	ppasMaFP4jn6nFY3Zr5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAdol-0004yA-9Y; Wed, 18 Sep 2019 17:32:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAdoL-0004ed-KK; Wed, 18 Sep 2019 17:32:15 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6680A208C0;
 Wed, 18 Sep 2019 17:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568827933;
 bh=1TixgpnrbW74TJpZIMBN4jvpzcDubcE9UumV31l30Nk=;
 h=From:To:Cc:Subject:Date:From;
 b=OzltOak1RI4M1f9eGUSNpFq39Ro2X4jHeAfIiXyq0c34FJmpbNaEv7Cjcemb0poM9
 uE04q4mDU1LrkMk30mY4EX+LhD7KA8S6J8COMeBcIJZj56YzKZ7ZEf8xMUBTP+sWFK
 ojyxY9o/4DOqaRfganDMdAi+8phtDnFnChg4e0II=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-tegra@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-crypto@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: rng: exynos4-rng: Convert Exynos PRNG
 bindings to json-schema
Date: Wed, 18 Sep 2019 19:31:34 +0200
Message-Id: <20190918173141.4314-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_103213_708641_8E8EE7B8 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Q29udmVydCBTYW1zdW5nIEV4eW5vcyBQc2V1ZG8gUmFuZG9tIE51bWJlciBHZW5lcmF0b3IgYmlu
ZGluZ3MgdG8gRFQKc2NoZW1hIGZvcm1hdCB1c2luZyBqc29uLXNjaGVtYS4KClNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCi0tLQoKQ2hhbmdlcyBz
aW5jZSB2MToKMS4gSW5kZW50IGV4YW1wbGUgd2l0aCBmb3VyIHNwYWNlcyAobW9yZSByZWFkYWJs
ZSkuCi0tLQogLi4uL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnR4dCAgICAgIHwg
MTkgLS0tLS0tLS0tCiAuLi4vYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcueWFtbCAg
ICAgfCA0MSArKysrKysrKysrKysrKysrKysrCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25z
KCspLCAyMCBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0CiBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4
eW5vczQtcm5nLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnR4dApkZWxldGVkIGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggYTEzZmJkYjRiZDg4Li4wMDAwMDAwMDAwMDAKLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnR4dAorKysg
L2Rldi9udWxsCkBAIC0xLDE5ICswLDAgQEAKLUV4eW5vcyBQc2V1ZG8gUmFuZG9tIE51bWJlciBH
ZW5lcmF0b3IKLQotUmVxdWlyZWQgcHJvcGVydGllczoKLQotLSBjb21wYXRpYmxlICA6IE9uZSBv
ZjoKLSAgICAgICAgICAgICAgICAtICJzYW1zdW5nLGV4eW5vczQtcm5nIiBmb3IgRXh5bm9zNDIx
MCBhbmQgRXh5bm9zNDQxMgotICAgICAgICAgICAgICAgIC0gInNhbXN1bmcsZXh5bm9zNTI1MC1w
cm5nIiBmb3IgRXh5bm9zNTI1MCsKLS0gcmVnICAgICAgICAgOiBTcGVjaWZpZXMgYmFzZSBwaHlz
aWNhbCBhZGRyZXNzIGFuZCBzaXplIG9mIHRoZSByZWdpc3RlcnMgbWFwLgotLSBjbG9ja3MgICAg
ICA6IFBoYW5kbGUgdG8gY2xvY2stY29udHJvbGxlciBwbHVzIGNsb2NrLXNwZWNpZmllciBwYWly
LgotLSBjbG9jay1uYW1lcyA6ICJzZWNzcyIgYXMgYSBjbG9jayBuYW1lLgotCi1FeGFtcGxlOgot
Ci0Jcm5nQDEwODMwNDAwIHsKLQkJY29tcGF0aWJsZSA9ICJzYW1zdW5nLGV4eW5vczQtcm5nIjsK
LQkJcmVnID0gPDB4MTA4MzA0MDAgMHgyMDA+OwotCQljbG9ja3MgPSA8JmNsb2NrIENMS19TU1M+
OwotCQljbG9jay1uYW1lcyA9ICJzZWNzcyI7Ci0JfTsKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnlh
bWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4yZDA3NWQ2Yzg3YjYK
LS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5n
L3NhbXN1bmcsZXh5bm9zNC1ybmcueWFtbApAQCAtMCwwICsxLDQxIEBACisjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy55YW1sIworJHNjaGVtYTog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBT
YW1zdW5nIEV4eW5vcyBTb0MgUHNldWRvIFJhbmRvbSBOdW1iZXIgR2VuZXJhdG9yCisKK21haW50
YWluZXJzOgorICAtIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KKworcHJv
cGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAgICAgLSBzYW1zdW5nLGV4eW5v
czQtcm5nICAgICAgICAgICAgICAgICAgICMgZm9yIEV4eW5vczQyMTAgYW5kIEV4eW5vczQ0MTIK
KyAgICAgIC0gc2Ftc3VuZyxleHlub3M1MjUwLXBybmcgICAgICAgICAgICAgICAjIGZvciBFeHlu
b3M1MjUwKworCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgIGNsb2NrczoKKyAgICBtYXhJ
dGVtczogMQorCisgIGNsb2NrLW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogc2Vj
c3MKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIHJlZworICAtIGNsb2NrLW5hbWVz
CisgIC0gY2xvY2tzCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICBybmdAMTA4MzA0MDAgeworICAg
ICAgICBjb21wYXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNC1ybmciOworICAgICAgICByZWcgPSA8
MHgxMDgzMDQwMCAweDIwMD47CisgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgMjU1PjsgLy8gQ0xL
X1NTUworICAgICAgICBjbG9jay1uYW1lcyA9ICJzZWNzcyI7CisgICAgfTsKZGlmZiAtLWdpdCBh
L01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggMDA5NjlhOTBmOTRjLi45Y2VjNDQ5NGI5
YTggMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xNDE4MSw3
ICsxNDE4MSw3IEBAIEw6CWxpbnV4LWNyeXB0b0B2Z2VyLmtlcm5lbC5vcmcKIEw6CWxpbnV4LXNh
bXN1bmctc29jQHZnZXIua2VybmVsLm9yZwogUzoJTWFpbnRhaW5lZAogRjoJZHJpdmVycy9jcnlw
dG8vZXh5bm9zLXJuZy5jCi1GOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5n
L3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0CitGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcueWFtbAogCiBTQU1TVU5HIEVYWU5PUyBUUlVF
IFJBTkRPTSBOVU1CRVIgR0VORVJBVE9SIChUUk5HKSBEUklWRVIKIE06CcWBdWthc3ogU3RlbG1h
Y2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
