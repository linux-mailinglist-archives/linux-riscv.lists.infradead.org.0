Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8377457C86
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMmTEF/8cC8I1qtVPxJMLCs+2cCk6+YXdyLSrVVhC/M=; b=R1q5zPho3pWr2Q
	Pp45k6FwEZVE+820NORl3thLzKuiK3svxu8LBBlpe12zfRyFDCG1eJNMd62snmiZMwXIVGQjMxEmT
	0kg5V/QspDAINWA+YAoo271kwLymriCrnBtYEIJP7VOgSO4BiknBusVh7orpyic9w+Rpk59AC4CjS
	jmFJdQoSmhbWl0ChLIuFs/LFgc+m/O4cylrT7Y+NfKrfDleGTSKA3Dm7j5CS2hfEI3mJTLo5vhMrA
	PNQTFjqfrQbhaGy1oGhVfcSDiXqakBRYHNDNurNIaBgmlE0wiwt2zDlrqZ0NsIa5k+ln7AIumkxVK
	jlrJO9AnrUS/gEEimUTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOHo-000068-RH; Thu, 27 Jun 2019 06:53:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8s-0006KM-BV
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QvwHyf2tfrpS4ttEwImWQohQhbnHRcLb2IhMdLFj3/o=; b=QCSDjqkcs6xCXVSYSe+s9PxCJT
 MWI1s11p859DYMzM+f6ys7pz1+j3B1ZJulhcDo7BvoMnDQXXQSkkiEW5Czqky3ix3OvJEf4E/tZBh
 9nFJLdnSfNx3w/Nl3TGGf1WXhjIF2X0LzBF60BxsYSg6sFOstqudpd1F0GFVIrXw3zok9iTCgLPi3
 tQKDgKvcic0dtNU6URpQfZJMirQFhfO0RvgVnYgiUByx0A6C1NicjxToD5JZemIfV3dGulqB/aKYA
 F+QlvgXlSLxhdf/ZDYj+jZ+ZN/GZdlfWgV6t0lH4ZxM41BxXJ1S16/8GSwRi/qCR8ZWP+i4OiVvQb
 VkCi0zHA==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIK7-0003wn-Lm
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 00:31:36 +0000
Received: from sasha-vm.mshome.net (unknown [107.242.116.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EE5A217D7;
 Thu, 27 Jun 2019 00:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561595495;
 bh=qrsJPgHBtxbzDoKBPZTVHY0Kv1gtUDUCCjRPB6wZcqI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KfOLwn1q/M1yAUMXO5LEtRVgCNhhdd8xcxjCRgjx/HGcduTkAnet5orIpvZtJ091X
 mQRlaLdJZ0Of/SaI2b3GHTnMSMhCj9TzWxazmwwSfCKYUhPXg7ijWv+5o8JkPAKE7i
 N+v/SkimCbyifDvqLx7gAJhAjuVJsbrW+ReHpW4E=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 24/95] bpf,
 riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh
Date: Wed, 26 Jun 2019 20:29:09 -0400
Message-Id: <20190627003021.19867-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627003021.19867-1-sashal@kernel.org>
References: <20190627003021.19867-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Song Liu <songliubraving@fb.com>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 netdev@vger.kernel.org, linux-riscv@lists.infradead.org, bpf@vger.kernel.org,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RnJvbTogTHVrZSBOZWxzb24gPGx1a2Uuci5uZWxzQGdtYWlsLmNvbT4KClsgVXBzdHJlYW0gY29t
bWl0IDFlNjkyZjA5ZTA5MWJmNWM4YjM4Mzg0ZjI5N2Q2ZGFlNWRiZjBmMTIgXQoKSW4gQlBGLCAz
Mi1iaXQgQUxVIG9wZXJhdGlvbnMgc2hvdWxkIHplcm8tZXh0ZW5kIHRoZWlyIHJlc3VsdHMgaW50
bwp0aGUgNjQtYml0IHJlZ2lzdGVycy4KClRoZSBjdXJyZW50IEJQRiBKSVQgb24gUklTQy1WIGVt
aXRzIGluY29ycmVjdCBpbnN0cnVjdGlvbnMgdGhhdCBwZXJmb3JtCnNpZ24gZXh0ZW5zaW9uIG9u
bHkgKGUuZy4sIGFkZHcsIHN1YncpIG9uIDMyLWJpdCBhZGQsIHN1YiwgbHNoLCByc2gsCmFyc2gs
IGFuZCBuZWcuIFRoaXMgYmVoYXZpb3IgZGl2ZXJnZXMgZnJvbSB0aGUgaW50ZXJwcmV0ZXIgYW5k
IEpJVHMKZm9yIG90aGVyIGFyY2hpdGVjdHVyZXMuCgpUaGlzIHBhdGNoIGZpeGVzIHRoZSBidWdz
IGJ5IHBlcmZvcm1pbmcgemVybyBleHRlbnNpb24gb24gdGhlIGRlc3RpbmF0aW9uCnJlZ2lzdGVy
IG9mIDMyLWJpdCBBTFUgb3BlcmF0aW9ucy4KCkZpeGVzOiAyMzUzZWNjNmY5MWYgKCJicGYsIHJp
c2N2OiBhZGQgQlBGIEpJVCBmb3IgUlY2NEciKQpDYzogWGkgV2FuZyA8eGkud2FuZ0BnbWFpbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEx1a2UgTmVsc29uIDxsdWtlLnIubmVsc0BnbWFpbC5jb20+CkFj
a2VkLWJ5OiBTb25nIExpdSA8c29uZ2xpdWJyYXZpbmdAZmIuY29tPgpBY2tlZC1ieTogQmrDtnJu
IFTDtnBlbCA8Ympvcm4udG9wZWxAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogUGFsbWVyIERhYmJl
bHQgPHBhbG1lckBzaWZpdmUuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbGV4ZWkgU3Rhcm92b2l0b3Yg
PGFzdEBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5l
bC5vcmc+Ci0tLQogYXJjaC9yaXNjdi9uZXQvYnBmX2ppdF9jb21wLmMgfCAxOCArKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9yaXNjdi9uZXQvYnBmX2ppdF9jb21wLmMgYi9hcmNoL3Jpc2N2L25ldC9icGZfaml0X2Nv
bXAuYwppbmRleCBlNWM4ZDY3NWJkNmUuLjQyNmQ1YzMzZWE5MCAxMDA2NDQKLS0tIGEvYXJjaC9y
aXNjdi9uZXQvYnBmX2ppdF9jb21wLmMKKysrIGIvYXJjaC9yaXNjdi9uZXQvYnBmX2ppdF9jb21w
LmMKQEAgLTc1MSwxMCArNzUxLDE0IEBAIHN0YXRpYyBpbnQgZW1pdF9pbnNuKGNvbnN0IHN0cnVj
dCBicGZfaW5zbiAqaW5zbiwgc3RydWN0IHJ2X2ppdF9jb250ZXh0ICpjdHgsCiAJY2FzZSBCUEZf
QUxVIHwgQlBGX0FERCB8IEJQRl9YOgogCWNhc2UgQlBGX0FMVTY0IHwgQlBGX0FERCB8IEJQRl9Y
OgogCQllbWl0KGlzNjQgPyBydl9hZGQocmQsIHJkLCBycykgOiBydl9hZGR3KHJkLCByZCwgcnMp
LCBjdHgpOworCQlpZiAoIWlzNjQpCisJCQllbWl0X3pleHRfMzIocmQsIGN0eCk7CiAJCWJyZWFr
OwogCWNhc2UgQlBGX0FMVSB8IEJQRl9TVUIgfCBCUEZfWDoKIAljYXNlIEJQRl9BTFU2NCB8IEJQ
Rl9TVUIgfCBCUEZfWDoKIAkJZW1pdChpczY0ID8gcnZfc3ViKHJkLCByZCwgcnMpIDogcnZfc3Vi
dyhyZCwgcmQsIHJzKSwgY3R4KTsKKwkJaWYgKCFpczY0KQorCQkJZW1pdF96ZXh0XzMyKHJkLCBj
dHgpOwogCQlicmVhazsKIAljYXNlIEJQRl9BTFUgfCBCUEZfQU5EIHwgQlBGX1g6CiAJY2FzZSBC
UEZfQUxVNjQgfCBCUEZfQU5EIHwgQlBGX1g6CkBAIC03OTUsMTQgKzc5OSwyMCBAQCBzdGF0aWMg
aW50IGVtaXRfaW5zbihjb25zdCBzdHJ1Y3QgYnBmX2luc24gKmluc24sIHN0cnVjdCBydl9qaXRf
Y29udGV4dCAqY3R4LAogCWNhc2UgQlBGX0FMVSB8IEJQRl9MU0ggfCBCUEZfWDoKIAljYXNlIEJQ
Rl9BTFU2NCB8IEJQRl9MU0ggfCBCUEZfWDoKIAkJZW1pdChpczY0ID8gcnZfc2xsKHJkLCByZCwg
cnMpIDogcnZfc2xsdyhyZCwgcmQsIHJzKSwgY3R4KTsKKwkJaWYgKCFpczY0KQorCQkJZW1pdF96
ZXh0XzMyKHJkLCBjdHgpOwogCQlicmVhazsKIAljYXNlIEJQRl9BTFUgfCBCUEZfUlNIIHwgQlBG
X1g6CiAJY2FzZSBCUEZfQUxVNjQgfCBCUEZfUlNIIHwgQlBGX1g6CiAJCWVtaXQoaXM2NCA/IHJ2
X3NybChyZCwgcmQsIHJzKSA6IHJ2X3NybHcocmQsIHJkLCBycyksIGN0eCk7CisJCWlmICghaXM2
NCkKKwkJCWVtaXRfemV4dF8zMihyZCwgY3R4KTsKIAkJYnJlYWs7CiAJY2FzZSBCUEZfQUxVIHwg
QlBGX0FSU0ggfCBCUEZfWDoKIAljYXNlIEJQRl9BTFU2NCB8IEJQRl9BUlNIIHwgQlBGX1g6CiAJ
CWVtaXQoaXM2NCA/IHJ2X3NyYShyZCwgcmQsIHJzKSA6IHJ2X3NyYXcocmQsIHJkLCBycyksIGN0
eCk7CisJCWlmICghaXM2NCkKKwkJCWVtaXRfemV4dF8zMihyZCwgY3R4KTsKIAkJYnJlYWs7CiAK
IAkvKiBkc3QgPSAtZHN0ICovCkBAIC04MTAsNiArODIwLDggQEAgc3RhdGljIGludCBlbWl0X2lu
c24oY29uc3Qgc3RydWN0IGJwZl9pbnNuICppbnNuLCBzdHJ1Y3QgcnZfaml0X2NvbnRleHQgKmN0
eCwKIAljYXNlIEJQRl9BTFU2NCB8IEJQRl9ORUc6CiAJCWVtaXQoaXM2NCA/IHJ2X3N1YihyZCwg
UlZfUkVHX1pFUk8sIHJkKSA6CiAJCSAgICAgcnZfc3VidyhyZCwgUlZfUkVHX1pFUk8sIHJkKSwg
Y3R4KTsKKwkJaWYgKCFpczY0KQorCQkJZW1pdF96ZXh0XzMyKHJkLCBjdHgpOwogCQlicmVhazsK
IAogCS8qIGRzdCA9IEJTV0FQIyNpbW0oZHN0KSAqLwpAQCAtOTY0LDE0ICs5NzYsMjAgQEAgc3Rh
dGljIGludCBlbWl0X2luc24oY29uc3Qgc3RydWN0IGJwZl9pbnNuICppbnNuLCBzdHJ1Y3QgcnZf
aml0X2NvbnRleHQgKmN0eCwKIAljYXNlIEJQRl9BTFUgfCBCUEZfTFNIIHwgQlBGX0s6CiAJY2Fz
ZSBCUEZfQUxVNjQgfCBCUEZfTFNIIHwgQlBGX0s6CiAJCWVtaXQoaXM2NCA/IHJ2X3NsbGkocmQs
IHJkLCBpbW0pIDogcnZfc2xsaXcocmQsIHJkLCBpbW0pLCBjdHgpOworCQlpZiAoIWlzNjQpCisJ
CQllbWl0X3pleHRfMzIocmQsIGN0eCk7CiAJCWJyZWFrOwogCWNhc2UgQlBGX0FMVSB8IEJQRl9S
U0ggfCBCUEZfSzoKIAljYXNlIEJQRl9BTFU2NCB8IEJQRl9SU0ggfCBCUEZfSzoKIAkJZW1pdChp
czY0ID8gcnZfc3JsaShyZCwgcmQsIGltbSkgOiBydl9zcmxpdyhyZCwgcmQsIGltbSksIGN0eCk7
CisJCWlmICghaXM2NCkKKwkJCWVtaXRfemV4dF8zMihyZCwgY3R4KTsKIAkJYnJlYWs7CiAJY2Fz
ZSBCUEZfQUxVIHwgQlBGX0FSU0ggfCBCUEZfSzoKIAljYXNlIEJQRl9BTFU2NCB8IEJQRl9BUlNI
IHwgQlBGX0s6CiAJCWVtaXQoaXM2NCA/IHJ2X3NyYWkocmQsIHJkLCBpbW0pIDogcnZfc3JhaXco
cmQsIHJkLCBpbW0pLCBjdHgpOworCQlpZiAoIWlzNjQpCisJCQllbWl0X3pleHRfMzIocmQsIGN0
eCk7CiAJCWJyZWFrOwogCiAJLyogSlVNUCBvZmYgKi8KLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcg
bGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
