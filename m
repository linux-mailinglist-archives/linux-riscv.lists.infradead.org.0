Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CDF4F3E8
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 07:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh8Ui0lMNvuai4HWG8Lps1kp1zaq7xEMG+HNQbNx3iE=; b=Synnwup8KbvWjA
	MoWGiXsBtQNpsJKI+trYRxd6TRptGmFQRjf+HUeftvVWL6e/ak4eCMu3p5l6+NbnvJVwU6E6ptUPX
	KCFZuy22l8ZUCYUk5a18gB5lmoGQUyt+3yW88iZ2FRlu8zqpQuyQFEsK2RWyw07RlOT6WRTjsjSI1
	VjmFRDnmO9oPpMPlboixMq6KHHj9M5zUKdnVbSzD7hlvWTOy1/9pXjw90XSUJZDTDBAGAHPQN/m/l
	EDOfdQbiq7KOQjbk9D0Rw/UH329gQgDQemQHgOVr04iSx4mSs2fPsc5qcyA/+qdQMEMVCoYKNO+SJ
	zJfpfFyTmgAisTBwQRFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heYlJ-00055U-Cb; Sat, 22 Jun 2019 05:40:29 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heYlG-000555-0u
 for linux-riscv@lists.infradead.org; Sat, 22 Jun 2019 05:40:27 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x5M5eCoN011433
 for <linux-riscv@lists.infradead.org>; Sat, 22 Jun 2019 14:40:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x5M5eCoN011433
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561182013;
 bh=JxBG390b3AdnCwZiQOKsk1HAVj5lXZJFRQcpOMWwHbY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vfztd4BrukAdjcSvvO2e/ZaIiyZ9mx12XbkLTV+W2nuoyC48frSlNAvAwwbP73Vyr
 Tn+tVvlKIzCwwccAQjVD1cg72WyVKXSwN1+zOr7lOr0xep66UxomKkozXKaAAqJ+CV
 SfVa4bLXejWLmgX1RRFqEBQRb5vCW/M+iBtN1UirSWuQ9L3Xh33Fs3k5t2oCFMw6Ld
 Z7kiY+Xf7S5QA3YRLzTg1M2Ye9HAaaVOTunAB6PxPorlGZDFETkls1kQhr8wgHXtMf
 YjfN2RgtEjH09lnD0+PgldC7gF8hrf52UOZ7yY1R/DkdUlmXGwi5iBOm4amb4+aKnQ
 LTT74SXqb15DQ==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id c4so3810626uad.1
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 22:40:13 -0700 (PDT)
X-Gm-Message-State: APjAAAV/61TILorKNkXORsFEXLsYXI9IyYI5CfQbKSC4DNXpmO1VrLQr
 6wx00uT43nSmkHtc6ebwuZRDSQFar7hZbRCMp0U=
X-Google-Smtp-Source: APXvYqzlKgWISF72/2l3BCTzXtxOrbxlLww7I4OL4+Gvksq0C26omqpvWWFe0eb5vghy8UgM0iBbJXyRxsNhrZQR8a0=
X-Received: by 2002:ab0:5ea6:: with SMTP id y38mr48367542uag.40.1561182012133; 
 Fri, 21 Jun 2019 22:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190604101409.2078-1-yamada.masahiro@socionext.com>
 <20190604101409.2078-16-yamada.masahiro@socionext.com>
 <CAK8P3a08f25WYP5r57JHPcZWieS2+07=_qTphLosS4M2w8F0Zw@mail.gmail.com>
 <CAK7LNATt8BSrMfrOVjZ_SbA0awsh4CvRhu6TF3gYYynirpviWw@mail.gmail.com>
In-Reply-To: <CAK7LNATt8BSrMfrOVjZ_SbA0awsh4CvRhu6TF3gYYynirpviWw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 22 Jun 2019 14:39:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNATi1kX_j9-7CoT24hohgTCQB1dSc9j8DNdmjnmEg1-kRg@mail.gmail.com>
Message-ID: <CAK7LNATi1kX_j9-7CoT24hohgTCQB1dSc9j8DNdmjnmEg1-kRg@mail.gmail.com>
Subject: Re: [PATCH 15/15] kbuild: compile test UAPI headers to ensure they
 are self-contained
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_224026_298550_0445EE48 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Michal Marek <michal.lkml@markovi.net>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Jani Nikula <jani.nikula@intel.com>, Networking <netdev@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMjIsIDIwMTkgYXQgMjoxMiBQTSBNYXNhaGlybyBZYW1hZGEKPHlhbWFkYS5t
YXNhaGlyb0Bzb2Npb25leHQuY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgSnVuIDIyLCAyMDE5IGF0
IDQ6MDUgQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gd3JvdGU6Cj4gPgo+ID4gT24g
VHVlLCBKdW4gNCwgMjAxOSBhdCAxMjoxNiBQTSBNYXNhaGlybyBZYW1hZGEKPiA+IDx5YW1hZGEu
bWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gPiAtLS0gYS9NYWtlZmlsZQo+
ID4gPiArKysgYi9NYWtlZmlsZQo+ID4gPiBAQCAtMTM2Myw3ICsxMzYzLDcgQEAgQ0xFQU5fRElS
UyAgKz0gJChNT0RWRVJESVIpIGluY2x1ZGUva3N5bQo+ID4gPiAgQ0xFQU5fRklMRVMgKz0gbW9k
dWxlcy5idWlsdGluLm1vZGluZm8KPiA+ID4KPiA+ID4gICMgRGlyZWN0b3JpZXMgJiBmaWxlcyBy
ZW1vdmVkIHdpdGggJ21ha2UgbXJwcm9wZXInCj4gPiA+IC1NUlBST1BFUl9ESVJTICArPSBpbmNs
dWRlL2NvbmZpZyB1c3IvaW5jbHVkZSBpbmNsdWRlL2dlbmVyYXRlZCAgICAgICAgICBcCj4gPiA+
ICtNUlBST1BFUl9ESVJTICArPSBpbmNsdWRlL2NvbmZpZyBpbmNsdWRlL2dlbmVyYXRlZCAgICAg
ICAgICBcCj4gPiA+ICAgICAgICAgICAgICAgICAgIGFyY2gvJChTUkNBUkNIKS9pbmNsdWRlL2dl
bmVyYXRlZCAudG1wX29iamRpZmYKPiA+ID4gIE1SUFJPUEVSX0ZJTEVTICs9IC5jb25maWcgLmNv
bmZpZy5vbGQgLnZlcnNpb24gXAo+ID4gPiAgICAgICAgICAgICAgICAgICBNb2R1bGUuc3ltdmVy
cyB0YWdzIFRBR1MgY3Njb3BlKiBHUEFUSCBHVEFHUyBHUlRBR1MgR1NZTVMgXAo+ID4KPiA+IFRo
aXMgY2hhbmdlIHNlZW1zIHRvIGhhdmUgY2F1c2VkIGEgbWlub3IgcmVncmVzc2lvbjoKPiA+Cj4g
PiAkIG1ha2UgY2xlYW4gOyBtYWtlIGNsZWFuCj4gPiBmaW5kOiDigJgq4oCZOiBObyBzdWNoIGZp
bGUgb3IgZGlyZWN0b3J5Cj4KPiBIbW0sIEkgY2Fubm90IHJlcHJvZHVjZSB0aGlzLgo+Cj4gSSBj
aGVja2VkIHRoZSBsYXRlc3QgbGludXgtbmV4dC4KPgo+Cj4gbWFzYWhpcm9AZ3JvdmVyOn4vcmVm
L2xpbnV4LW5leHQkIGdpdCBkZXNjcmliZQo+IG5leHQtMjAxOTA2MjEKPiBtYXNhaGlyb0Bncm92
ZXI6fi9yZWYvbGludXgtbmV4dCQgbWFrZSBjbGVhbjsgbWFrZSBjbGVhbgo+IG1hc2FoaXJvQGdy
b3Zlcjp+L3JlZi9saW51eC1uZXh0JAo+Cj4KCkFoLCBub3cgSSB3YXMgYWJsZSB0byByZXByb2R1
Y2UgaXQuCgpXaWxsIGZpeCBpdCBzb29uLiBUaGFua3MuCgoKCi0tIApCZXN0IFJlZ2FyZHMKTWFz
YWhpcm8gWWFtYWRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2Cg==
