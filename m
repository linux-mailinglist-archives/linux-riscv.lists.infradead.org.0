Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB4A9B9E9
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0U/syvB5mEj+dPAt5qtb6S88PBa1CFFcZ7WQH7ujWlE=; b=jviEhwK8QPD19U
	mFxEyD5EWU4bwYb4AbMwBw25lDc4UrWqJ2rLIkrVPwlb7kRiCnDmy400WrWhTYaRD8GHyZ8hYxQWr
	mae8Rrbg/bVwLI6xb8F3C/rJkiVP5OeiHyf3CC9cSzyakZah5+a7eG0uTZplLddsW/LZRPNHCYQRV
	e/dVr7egQ1Pl6vXo5AcdS3wQb3wJAa+lI3PhDL3ZjF2FJgolVTkZZhUlwDmouD7TIjtIuZnu4kFzV
	KuE9UiP8j8cuZlxn5eH6tF2tIoyI/cI5YRSArjuFCsXYo4bU9659dcmw8JQIKrA/rzif1HwY53V3W
	HA8jCrQ5sLGvk5nr5QFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1KKJ-00015M-EN; Sat, 24 Aug 2019 00:54:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1KKF-00014W-7D
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:54:40 +0000
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D846A21874
 for <linux-riscv@lists.infradead.org>; Sat, 24 Aug 2019 00:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566608073;
 bh=x1rZgFuF7zhBu+PF5V0DipyAdjWjQPQFLw5J0HZwA5M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hJIBkp4ex9ZQ+tOckho4eXsCjZbuM810uzB7w5IH58Bqs2z+lIZLVM/bc9U8TR/YR
 l+oDbLPWD2lgNiCR7JcICewn1FjjjyiT9ApaW6Imq8GkCfMUU7CKBGzikFASqtalti
 3EbpZ7K4v5OR8Ce/wAqR2Dii4Q5dmLJBQi6kXTZw=
Received: by mail-wr1-f42.google.com with SMTP id j16so10081773wrr.8
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 17:54:32 -0700 (PDT)
X-Gm-Message-State: APjAAAX/CP2EOr05pzqe+WGMKDA7h9kBylAI+yn6ZFJmur9V0zHab5j0
 66O85UrNZ6ut5GH3jYTsQqeO1ChRWkl9RmQ++Zo=
X-Google-Smtp-Source: APXvYqyI98b8Dl70U6kZwnD10MoCpbCJnl4Auf5yfWbX5BLmU+zB34pfFNQ3wjB2FOOR2rz/gQqROnaTxKDoJSnZwjU=
X-Received: by 2002:adf:dc03:: with SMTP id t3mr7762051wri.80.1566608071352;
 Fri, 23 Aug 2019 17:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566540652.git.han_mao@c-sky.com>
 <820d80272fc5627b8d00e684663a614470217606.1566540652.git.han_mao@c-sky.com>
 <CAEbi=3fbe9zbsLyfA=s9gHtAFJrp5Ox0jWoAqcZudQ_xODicgA@mail.gmail.com>
In-Reply-To: <CAEbi=3fbe9zbsLyfA=s9gHtAFJrp5Ox0jWoAqcZudQ_xODicgA@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Sat, 24 Aug 2019 08:54:20 +0800
X-Gmail-Original-Message-ID: <CAJF2gTS80XU=4z-_=N=oGV6GH-+8KXCa74DyhVMcRxJRBq5g4A@mail.gmail.com>
Message-ID: <CAJF2gTS80XU=4z-_=N=oGV6GH-+8KXCa74DyhVMcRxJRBq5g4A@mail.gmail.com>
Subject: Re: [PATCH V5 1/3] riscv: Add perf callchain support
To: Greentime Hu <green.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_175439_307419_138FEEEF 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

UGxlYXNlIGNoZWNrIENPTkZJR19GUkFNRV9QT0lOVEVSCgoxICpmcmFtZSA9ICooKHN0cnVjdCBz
dGFja2ZyYW1lICopZnJhbWUtPmZwIC0gMSk7ClRoaXMgY29kZSBpcyBvcmlnaW9uYWxseSBmcm9t
IHJpc2N2L2tlcm5lbC9zdGFja3RyYWNlLmM6IHdhbGtfc3RhY2tmcmFtZQoKSW4gbGludXgvTWFr
ZWZpbGUgaXQnbGwgaW52b2x2ZSB0aGUgb3B0aW9ucyBmb3IgZ2NjIHRvIGRlZmluaXRlbHkKc3Rv
cmUgcmEgJiBwcmV2X2ZwIGluIGZwIHBvaW50ZXIuCmlmZGVmIENPTkZJR19GUkFNRV9QT0lOVEVS
CktCVUlMRF9DRkxBR1MgKz0gLWZuby1vbWl0LWZyYW1lLXBvaW50ZXIgLWZuby1vcHRpbWl6ZS1z
aWJsaW5nLWNhbGxzCgpTbyAtLWNhbGwtZ3JhcGggZnAgbmVlZCBkZXBlbmRzIG9uIENPTkZJR19G
UkFNRV9QT0lOVEVSLgoKT24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgNDo1NiBQTSBHcmVlbnRpbWUg
SHUgPGdyZWVuLmh1QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBNYW8sCj4KPiBNYW8gSGFuIDxo
YW5fbWFvQGMtc2t5LmNvbT4g5pa8IDIwMTnlubQ45pyIMjPml6Ug6YCx5LqUIOS4i+WNiDI6MTbl
r6vpgZPvvJoKPgo+ID4KPiA+IFRoaXMgcGF0Y2ggYWRkIHN1cHBvcnQgZm9yIHBlcmYgY2FsbGNo
YWluIHNhbXBsaW5nIG9uIHJpc2N2IHBsYXRmb3JtLgo+ID4gVGhlIHJldHVybiBhZGRyZXNzIG9m
IGxlYWYgZnVuY3Rpb24gaXMgcmV0cmlldmVkIGZyb20gcHRfcmVncyBhcwo+ID4gaXQgaXMgbm90
IHNhdmVkIGluIHRoZSBvdXRtb3N0IGZyYW1lLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hbyBI
YW4gPGhhbl9tYW9AYy1za3kuY29tPgo+ID4gQ2M6IFBhdWwgV2FsbXNsZXkgPHBhdWwud2FsbXNs
ZXlAc2lmaXZlLmNvbT4KPiA+IENjOiBHcmVlbnRpbWUgSHUgPGdyZWVuLmh1QGdtYWlsLmNvbT4K
PiA+IENjOiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNpZml2ZS5jb20+Cj4gPiBDYzogbGludXgt
cmlzY3YgPGxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4gPiBDYzogQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gPiBDYzogR3VvIFJlbiA8Z3VvcmVuQGtlcm5lbC5vcmc+
Cj4gPiAtLS0KPiA+ICBhcmNoL3Jpc2N2L01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAzICsK
PiA+ICBhcmNoL3Jpc2N2L2tlcm5lbC9NYWtlZmlsZSAgICAgICAgIHwgICAzICstCj4gPiAgYXJj
aC9yaXNjdi9rZXJuZWwvcGVyZl9jYWxsY2hhaW4uYyB8IDExNSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L2tlcm5l
bC9wZXJmX2NhbGxjaGFpbi5jCj4KPiBJIGp1c3QgdGVzdGVkICIuL3BlcmYgcmVjb3JkIC1lIGNw
dS1jbG9jayAtLWNhbGwtZ3JhcGggZnAgbHMiIG9uCj4gVW5sZWFzaGVkIGJvYXJkIGFuZCBJIGdv
dCB0aGlzIGZhaWx1cmUuCj4gSSB0YWtlIGEgbG9vayBhdCBpdC4gSXQgc2VlbSBmYWlsZWQgaW4g
aGVyZS4gRG8geW91IGhhdmUgYW55IGlkZWE/Cj4gSXQgc2VlbXMgZmluZSBpbiBRZW11Lgo+Cj4g
MSAqZnJhbWUgPSAqKChzdHJ1Y3Qgc3RhY2tmcmFtZSAqKWZyYW1lLT5mcCAtIDEpOwo+IGZmZmZm
ZmUwMDAxYTE5OGM6IDAwODYzYTgzIGxkIHM1LDgoYTIpCj4gZmZmZmZmZTAwMDFhMTk5MDogZmYw
OTM5MDMgbGQgczIsLTE2KHMyKQo+Cj4gLi9wZXJmIHJlY29yZCAtZSBjcHUtY2xvY2sgLS1jYWxs
LWdyYXBoIGZwIGxzCj4gWyA5NjE5LjQyMzg4NF0gaHJ0aW1lcjogaW50ZXJydXB0IHRvb2sgNzMz
MDAwIG5zCj4gWyA5NjE5Ljk3NzAxN10gVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgcGFnaW5nIHJl
cXVlc3QgYXQgdmlydHVhbAo+IGFkZHJlc3MgZmZmZmZmZmZmZmZmZmY5NAo+IFsgOTYyMC4yMTQ3
MzZdIE9vcHMgWyMxXQo+IFsgOTYyMC4yODk4OTNdIE1vZHVsZXMgbGlua2VkIGluOgo+IFsgOTYy
MC4zOTEzNzhdIENQVTogMCBQSUQ6IDI2NCBDb21tOiBscyBOb3QgdGFpbnRlZAo+IDUuMy4wLXJj
NS0wMDAwMy1nYjAwOGY2YmNkNjdjICM0Cj4gWyA5NjIwLjY0MDE3Nl0gc2VwYzogZmZmZmZmZTAw
MDFhMTk4YyByYSA6IGZmZmZmZmUwMDAxYTE5OWEgc3AgOgo+IGZmZmZmZmUwMDAwOTM3MjAKPiBb
IDk2MjAuODgwMzY2XSBncCA6IGZmZmZmZmUwMDA5N2RhZDggdHAgOiBmZmZmZmZlMDAwMDgyZTQw
IHQwIDogMDAwMDAwMDAwMDA0NjAwMAo+IFsgOTYyMS4xMjA1NjRdIHQxIDogMDAwMDAwMDAwMDAw
MDAwMiB0MiA6IDAwMDAwMDAwMDAwMDAwMDcgczAgOiBmZmZmZmZlMDAwMDkzNzYwCj4gWyA5NjIx
LjM2MDc2OF0gczEgOiBmZmZmZmZlMDAwMDkzNzg4IGEwIDogMDAwMDAwMDAwMDAwMDAwMyBhMSA6
IDAwMDAwMDAwMDAwMDAwMDAKPiBbIDk2MjEuNjAwOTkxXSBhMiA6IGZmZmZmZmZmZmZmZmZmOGMg
YTMgOiAwMDAwMDAwMDAwMDAxZmEwIGE0IDogMDAwMDAwMDAwMDAwMDAxMAo+IFsgOTYyMS44NDEx
ODFdIGE1IDogMDAwMDAwMDAwMDAwMDAwMiBhNiA6IDAwMDAwMDAwMDAwMDAwMDEgYTcgOiBmZmZm
ZmZlMDc5YjM0ZTEwCj4gWyA5NjIyLjA4MTQwMF0gczIgOiBmZmZmZmZmZmZmZmZmZjljIHMzIDog
ZmZmZmZmZTAwMDAwMDAwMCBzNCA6IDAwMDAwMDAwMDAwMDFmZjgKPiBbIDk2MjIuMzIxNjE4XSBz
NSA6IGZmZmZmZmUwMDAwOTNkYTAgczYgOiBmZmZmZmZlMDAwOTdkNTQwIHM3IDogZmZmZmZmZTA3
YTE1MTdhMAo+IFsgOTYyMi41NjE4MTFdIHM4IDogMDAwMDA4YmYwMWM3ZmY2MCBzOSA6IGZmZmZm
ZmUwMDAyMzViMmEgczEwOiAwMDAwMDAwMjAwMDAwMTIwCj4gWyA5NjIyLjgwMjAxNV0gczExOiAw
MDAwMDAwMDAwMDAwMDAxIHQzIDogZmZmZmZmZTA3OWIzNGUwMCB0NCA6IDAwMDAwMDAwMDAwMDAw
MDEKPiBbIDk2MjMuMDQyMTk0XSB0NSA6IDAwMDAwMDAwMDAwMDAwMDggdDYgOiBmZmZmZmZlMDAw
OTIwOGQwCj4gWyA5NjIzLjIxODc4NV0gc3N0YXR1czogMDAwMDAwMDIwMDAwMDEwMCBzYmFkYWRk
cjogZmZmZmZmZmZmZmZmZmY5NAo+IHNjYXVzZTogMDAwMDAwMDAwMDAwMDAwZAo+IFsgOTYyMy40
OTA4NTBdIC0tLVsgZW5kIHRyYWNlIDQ5MDQzZjI4ZTg1NmQ4NGQgXS0tLQo+IFsgOTYyMy42NDQy
MTddIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBGYXRhbCBleGNlcHRpb24gaW4gaW50ZXJy
dXB0Cj4gWyA5NjIzLjg1NTQ3MF0gU01QOiBzdG9wcGluZyBzZWNvbmRhcnkgQ1BVcwo+IFsgOTYy
My45ODU5NTVdIC0tLVsgZW5kIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBGYXRhbCBleGNl
cHRpb24gaW4KPiBpbnRlcnJ1cHQgXS0tLQoKCgotLSAKQmVzdCBSZWdhcmRzCiBHdW8gUmVuCgpN
TDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtY3NreS8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdAps
aW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
