Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45366B7778
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 12:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UDuGPfH4oJLvi2j9zSuw6dY2SV6bt6G17XjXheqDDs=; b=QtNCi0Vt8nKRLP
	aQKCynHvNgW8Qi06oObXImdA2L/vUV2jHcymftn/+aeggLAKefYuTL6OhH1WOGiAhChF3QDFXydM7
	6Mps5jXEaux6r09A0lHtSUHznr/HLx97LUUbf6cfcwhdBJ/mxgRktnZF7tQuOUASoTL7fM6YsRTZN
	HUdmCGKP03GSOHbA0RJ+osyj36Hlhb6l59qzywy1MRQ+p6Wcm14iSxRSnZuBLwNRN6nwTjhoQCuWT
	SOO8YJxzFg4CX3icl88uiZ0sv+8irXIMM/bfmgQickxL0KcfdOP+rghnfN4goEnIa8ggXdPp/QhKX
	qVN/yvVXXbkcwRM5zvkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAthl-0005xI-FN; Thu, 19 Sep 2019 10:30:29 +0000
Received: from mail-40132.protonmail.ch ([185.70.40.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAthh-0005wp-5L
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 10:30:27 +0000
Date: Thu, 19 Sep 2019 10:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hardenedlinux.org;
 s=protonmail; t=1568889022;
 bh=hiwcVYVyjA8rIAfDxqCw5jAP15PD6IpvcY7gJcQeLRw=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=h9MeoilmyiThRpXXIznQvZEu05WaaRsTkYkmbaIdTzRfg6CPLp0LSSTgss8sfSrBa
 5JWkj7nP9SSQ/glRfXBu05XhnIf2bXK0RZSLFwPw6FlAHdKEOzuroZqhsZ6RzeQGnB
 Scy381WsKNTdZ18VxQT57InOO0JU2PdCrt5wOq3M=
To: Paul Walmsley <paul.walmsley@sifive.com>
From: Xiang Wang <merle@hardenedlinux.org>
Subject: Re: [PATCH] arch/riscv: disable too many harts before pick main boot
 hart
Message-ID: <oZnw_aigjzhp0LNTjqSVEPWA6nBsFhV4z0KJXsCw9oPg3pGRju1n3kzDin_GH06vl8Jn5MU5keS2LE1FLrPfR3V66b9hkoqKQJ7CZ_tMqUk=@hardenedlinux.org>
In-Reply-To: <alpine.DEB.2.21.9999.1909190324250.10826@viisi.sifive.com>
References: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
 <alpine.DEB.2.21.9999.1909190324250.10826@viisi.sifive.com>
Feedback-ID: BRRa7Rf7LqOlikZR00e5gSr_IsihWq0drDTak4NnawY-ONQTW87vpTHz90bkJTl_rn8r4L6gc-nP1pm37CQtxw==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_033025_659151_DBA6EE6C 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Xiang Wang <merle@hardenedlinux.org>
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "citypw@hardenedlinux.org" <citypw@hardenedlinux.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgoKCgrigJDigJDigJDigJDigJDigJDigJAgT3JpZ2luYWwgTWVzc2FnZSDigJDigJDigJDigJDi
gJDigJDigJAKT24gMjAxOeW5tDnmnIgxOeaXpVRodXJzZGF5UE0254K5MjXliIYsIFBhdWwgV2Fs
bXNsZXkgPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT4gd3JvdGU6Cgo+IE9uIEZyaSwgNiBTZXAg
MjAxOSwgWGlhbmcgV2FuZyB3cm90ZToKPgo+ID4gRnJvbSAxMjMwMDg2NWQxMTAzNjE4YzlkNGMz
NzVmN2Q3ZmJlNjAxYjY2MThjIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+ID4gRnJvbTogWGlh
bmcgV2FuZyBtZXJsZUBoYXJkZW5lZGxpbnV4Lm9yZwo+ID4gRGF0ZTogRnJpLCA2IFNlcCAyMDE5
IDExOjU2OjA5ICswODAwCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGFyY2gvcmlzY3Y6IGRpc2FibGUg
dG9vIG1hbnkgaGFydHMgYmVmb3JlIHBpY2sgbWFpbiBib290IGhhcnQKPiA+IFRoZXNlIGhhcnRz
IHdpdGggaWQgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIENPTkZJR19OUl9DUFVTIG5lZWQgdG8g
YmUgZGlzYWJsZWQuCj4gPiBCdXQgcGljayB0aGUgbWFpbiBIYXJ0IGNhbiBjaG9vc2UgYW55IG9u
ZS4gU28sIGJlZm9yZSBwaWNrIHRoZSBtYWluIGhhcnQsIHlvdQo+ID4gbmVlZCB0byBkaXNhYmxl
IHRoZSBoYXJ0IHdpdGggaWQgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIENPTkZJR19OUl9DUFVT
Lgo+ID4gU2lnbmVkLW9mZi1ieTogWGlhbmcgV2FuZyBtZXJsZUBoYXJkZW5lZGxpbnV4Lm9yZwo+
Cj4gVGhhbmtzLCBoZXJlJ3Mgd2hhdCBJJ20gcGxhbm5pbmcgdG8gcXVldWUgZm9yIHY1LjQtcmMx
LiBQbGVhc2UgbGV0IG1lCj4ga25vdyBBU0FQIGlmIHlvdSB3YW50IHRvIGNoYW5nZSB0aGUgcGF0
Y2ggZGVzY3JpcHRpb24uCj4KPiAtICAgUGF1bAoKTm90IG5lZWQgdG8gY2hhbmdlCgo+Cj4gICAg
IEZyb206IFhpYW5nIFdhbmcgbWVybGVAaGFyZGVuZWRsaW51eC5vcmcKPgo+Cj4gRGF0ZTogRnJp
LCA2IFNlcCAyMDE5IDExOjU2OjA5ICswODAwCj4gU3ViamVjdDogW1BBVENIXSBhcmNoL3Jpc2N2
OiBkaXNhYmxlIGV4Y2VzcyBoYXJ0cyBiZWZvcmUgcGlja2luZyBtYWluIGJvb3QgaGFydAo+Cj4g
SGFydHMgd2l0aCBpZCBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gQ09ORklHX05SX0NQVVMgbmVl
ZCB0byBiZQo+IGRpc2FibGVkLiBCdXQgdGhlIGtlcm5lbCBjYW4gcGljayBhbnkgaGFydCBhcyB0
aGUgbWFpbiBoYXJ0LiBTbywKPiBiZWZvcmUgcGlja2luZyB0aGUgbWFpbiBoYXJ0LCB0aGUga2Vy
bmVsIG11c3QgZGlzYWJsZSBoYXJ0cyB3aXRoIGlkcwo+IGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0
byBDT05GSUdfTlJfQ1BVUy4KPgo+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIFdhbmcgbWVybGVAaGFy
ZGVuZWRsaW51eC5vcmcKPiBSZXZpZXdlZC1ieTogUGFsbWVyIERhYmJlbHQgcGFsbWVyQHNpZml2
ZS5jb20KPiBbcGF1bC53YWxtc2xleUBzaWZpdmUuY29tOiB1cGRhdGVkIHRvIGFwcGx5OyBjbGVh
bmVkIHVwIHBhdGNoCj4gZGVzY3JpcHRpb25dCj4gU2lnbmVkLW9mZi1ieTogUGF1bCBXYWxtc2xl
eSBwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20KPgo+IGFyY2gvcmlzY3Yva2VybmVsL2hlYWQuUyB8
IDggKysrKystLS0KPiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yva2VybmVsL2hlYWQuUyBiL2FyY2gvcmlz
Y3Yva2VybmVsL2hlYWQuUwo+IGluZGV4IDE1YTkxODlmOTFhZC4uNzJmODliNzU5MGRkIDEwMDY0
NAo+IC0tLSBhL2FyY2gvcmlzY3Yva2VybmVsL2hlYWQuUwo+ICsrKyBiL2FyY2gvcmlzY3Yva2Vy
bmVsL2hlYWQuUwo+IEBAIC02Myw2ICs2MywxMSBAQCBfc3RhcnRfa2VybmVsOgo+IGxpIHQwLCBT
Ul9GUwo+IGNzcmMgQ1NSX1NTVEFUVVMsIHQwCj4KPiArI2lmZGVmIENPTkZJR19TTVAKPgo+IC0g
ICBsaSB0MCwgQ09ORklHX05SX0NQVVMKPiAtICAgYmdldSBhMCwgdDAsIC5Mc2Vjb25kYXJ5X3Bh
cmsKPiAgICAgKyNlbmRpZgo+Cj4gLSAgIC8qIFBpY2sgb25lIGhhcnQgdG8gcnVuIHRoZSBtYWlu
IGJvb3Qgc2VxdWVuY2UgKi8KPiAgICAgbGEgYTMsIGhhcnRfbG90dGVyeQo+ICAgICBsaSBhMiwg
MQo+ICAgICBAQCAtMTU0LDkgKzE1OSw2IEBAIHJlbG9jYXRlOgo+Cj4gICAgIC5Mc2Vjb25kYXJ5
X3N0YXJ0Ogo+ICAgICAjaWZkZWYgQ09ORklHX1NNUAo+Cj4KPiAtICAgbGkgYTEsIENPTkZJR19O
Ul9DUFVTCj4gLSAgIGJnZXUgYTAsIGExLCAuTHNlY29uZGFyeV9wYXJrCj4gLSAgIC8qIFNldCB0
cmFwIHZlY3RvciB0byBzcGluIGZvcmV2ZXIgdG8gaGVscCBkZWJ1ZyAqLwo+ICAgICBsYSBhMywg
LkxzZWNvbmRhcnlfcGFyawo+ICAgICBjc3J3IENTUl9TVFZFQywgYTMKPiAgICAgLS0KPiAgICAg
Mi4yMy4wCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNj
dgo=
