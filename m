Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64355481FC
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 14:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wL844kONSgyJHLdzWoQzVELvJVSAqRONIFe+RwpEnQk=; b=VH7PZVQtS19uTI
	X+zaYFlAZR7wJxMBQEnqDVT58CTUiURuXypB9HozcHzzavPAt9TjEHBgggH+q6XQkgLIJvSih4DIw
	etWL0lTcgsXHlUQbofqcaNQE9JNPELzRwd3ZSIF9Ma1pTJcO9pQyGJ1fof6lbM2vi+4U8qFdzm4pO
	s1Yfm94m0IfqD45BTqVee9oI5RNiEakIUGmVy2zbTulfFe+o6Ftholqeq/AlUyVN2gNV7xuz+/4/L
	X2jO7wypoLC3B5IXMmXci93IeFypOlknuA0p+x8W9K+r5FU+Jkw7xjKrVAXyfbw6OhVOTy/oYlux/
	PZ9DtOGPTY0wq7jFyrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqiX-00088O-0R; Mon, 17 Jun 2019 12:26:33 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqi3-0007hw-P3
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 12:26:05 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id B25D4600A1;
 Mon, 17 Jun 2019 14:25:59 +0200 (CEST)
From: Rolf Eike Beer <eb@emlix.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: riscv: remove unused barrier defines
Date: Mon, 17 Jun 2019 14:25:59 +0200
Message-ID: <1862877.fiP6YxjBP5@devpool35>
Organization: emlix GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052603_994033_A3E99D64 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RnJvbSA5NDdmOWZlNDgzZGM2NTYxZTMxZjBkMjI5NGViNmZlZGMxZDZkOWJiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSb2xmIEVpa2UgQmVlciA8ZWJAZW1saXguY29tPgpEYXRlOiBN
b24sIDE3IEp1biAyMDE5IDE0OjIyOjM3ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gcmlzY3Y6IHJl
bW92ZSB1bnVzZWQgYmFycmllciBkZWZpbmVzCgpUaGV5IHdlcmUgaW50cm9kdWNlZCBpbiBmYWI5
NTdjMTFlZmUyZjQwNWUwOGI5ZjBkMDgwNTI0YmMyNjMxNDI4IGxvbmcgYWZ0ZXIKMmUzOTQ2NWFi
YzRiNzg1NmEwZWE2ZmNmNGY2YjQ2NjhiYjVkYjg3NyByZW1vdmVkIHRoZSByZW1uYW50cyBvZiBh
bGwgcHJldmlvdXMKaW5zdGFuY2VzIGZyb20gdGhlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBSb2xm
IEVpa2UgQmVlciA8ZWJAZW1saXguY29tPgotLS0KIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vYml0
b3BzLmggfCA1IC0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2JpdG9wcy5oIGIvYXJjaC9yaXNjdi9pbmNsdWRl
L2FzbS9iaXRvcHMuaAppbmRleCAzOTQzYmU0ODBhZjAuLjM5NmEzMzAzYzUzNyAxMDA2NDQKLS0t
IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9iaXRvcHMuaAorKysgYi9hcmNoL3Jpc2N2L2luY2x1
ZGUvYXNtL2JpdG9wcy5oCkBAIC0xNSwxMSArMTUsNiBAQAogI2luY2x1ZGUgPGFzbS9iYXJyaWVy
Lmg+CiAjaW5jbHVkZSA8YXNtL2JpdHNwZXJsb25nLmg+CiAKLSNpZm5kZWYgc21wX21iX19iZWZv
cmVfY2xlYXJfYml0Ci0jZGVmaW5lIHNtcF9tYl9fYmVmb3JlX2NsZWFyX2JpdCgpICBzbXBfbWIo
KQotI2RlZmluZSBzbXBfbWJfX2FmdGVyX2NsZWFyX2JpdCgpICAgc21wX21iKCkKLSNlbmRpZiAv
KiBzbXBfbWJfX2JlZm9yZV9jbGVhcl9iaXQgKi8KLQogI2luY2x1ZGUgPGFzbS1nZW5lcmljL2Jp
dG9wcy9fX2Zmcy5oPgogI2luY2x1ZGUgPGFzbS1nZW5lcmljL2JpdG9wcy9mZnouaD4KICNpbmNs
dWRlIDxhc20tZ2VuZXJpYy9iaXRvcHMvZmxzLmg+Ci0tIAoyLjIxLjAKLS0gClJvbGYgRWlrZSBC
ZWVyLCBlbWxpeCBHbWJILCBodHRwOi8vd3d3LmVtbGl4LmNvbQpGb24gKzQ5IDU1MSAzMDY2NC0w
LCBGYXggKzQ5IDU1MSAzMDY2NC0xMQpHb3RoYWVyIFBsYXR6IDMsIDM3MDgzIEfDtnR0aW5nZW4s
IEdlcm1hbnkKU2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBHw7Z0dGluZ2VuLCBBbXRzZ2VyaWNodCBH
w7Z0dGluZ2VuIEhSIEIgMzE2MApHZXNjaMOkZnRzZsO8aHJ1bmc6IEhlaWtlIEpvcmRhbiwgRHIu
IFV3ZSBLcmFja2Ug4oCTIFVzdC1JZE5yLjogREUgMjA1IDE5OCAwNTUKCmVtbGl4IC0gc21hcnQg
ZW1iZWRkZWQgb3BlbiBzb3VyY2UKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yaXNjdgo=
