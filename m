Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C76B9AAE2
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 10:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWJCTWrHc6Niufi6GWH618VCTr8GvlCx2Z4QvpzNQN0=; b=iCryOGjK2kKBEz
	+giJV36UqkyxOIwZx4AhzMgmKBcL3xBhfZqq0rNX8iXkBtS+sj+Z9cFc6fTQr0SUxEhs0uel3vZUS
	VBvhvgPK4i0OgE/Ob3PAbdvFOm3NGgS5jyiZE/5d86I5E7HrLqHGn69dOHTBcNY9awODrF3bx/6f+
	W7pQulhq/bMhbeCN0dEE3NKKc3Pd7UgVMRnxd8H2v9p/Z5HKuSRDiwAlu3CHahCJtKRzuL3IUfPEG
	og7pKoKWkDLqsS9lphVqNB4d8u88OSiLNJ+1pVgTAdQreBZtAm3dwDDsPDcUOj/lknu7Mej0iFmgw
	GOY3FqYCuNur5pynTEbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15NL-0006sZ-0r; Fri, 23 Aug 2019 08:56:51 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15NC-0006lp-0g
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 08:56:43 +0000
Received: by mail-qt1-x843.google.com with SMTP id t12so10502174qtp.9
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 01:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BTnwn95++Op3SfWaQCpErhny3AGKGOkNMopDRr3KEu0=;
 b=XGM9hG+O9FrtwGIUWPwCuNTLzgN5bUJNVOdp91Dv6P29Tf98HvbRWmcKJgXEV2Sltk
 a/FGMeI+jQm6Cnbljsb4PP7+Rps+vijt9Tl+Ok3H7Nx9hPDNqdeBNSNT9uGApXuKB77p
 znW6hCrBJaBUzMIyr7X5xCXO8zJPz7mf9NAsllLvQQJyWI8SLKyx8qo2EOi4S2KjifRA
 YNijyfUgRbsPX6iKiJtYYHGxQJ2WSTJgruCSddFw2ven0W06L34HaA6/YHUKDbjT3elK
 rtdipgAhPX6uK1bSEXs0Y8/KAFRGawESHEzu8GmwFTS39BbHuwHJ1xRa5G1CdI2CxYji
 vytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BTnwn95++Op3SfWaQCpErhny3AGKGOkNMopDRr3KEu0=;
 b=FIQ6OfIa5Q9djCU49MiCjy2wTnMJhoLzhgZLlccsxocBhjJCGX8vMub/6j0bidA1YF
 VQLyVeFbRkclGz9X/zHZdJIYfrCrrXk0vkiig9avqYueS82kRZYTUUzIxAokujznxd47
 WnF83fWjm0jE3fDF0JQCZM4DzuKpFaRFHh9qk8R9ar84iLRLRT4jXT5bcaeNGGHe7tWO
 kVYz4ovBjfe2fRpw64p5uxpsyLi0v9jpBDd2azJPo14P2fh+LQB8tXRFxKyD1MC3IbzH
 8+9Y+bb75CnTKk4tyrRYoGVfkdN60dJIxLYM9mG4YI/B16p7xTS93NsS3lNdOmdyoRgv
 E6RA==
X-Gm-Message-State: APjAAAV6eVr3kJgQlavhpIbHj3p5zrsl3E5Ud7AHFDMfj+Pv46DPJAac
 8ve2+VdZF472EpnuxRTntEUUFJZG7lyxJ3GM5AU=
X-Google-Smtp-Source: APXvYqyL3NooS+2ggd9zdNLJemCTsHJDuV1xwpwNqzfrpaDL4nGuZMIk0c7+MO0U4L91B22FYl5jAdI4ch3Cf5er3Uk=
X-Received: by 2002:ac8:2d2c:: with SMTP id n41mr3667775qta.28.1566550600739; 
 Fri, 23 Aug 2019 01:56:40 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566540652.git.han_mao@c-sky.com>
 <820d80272fc5627b8d00e684663a614470217606.1566540652.git.han_mao@c-sky.com>
In-Reply-To: <820d80272fc5627b8d00e684663a614470217606.1566540652.git.han_mao@c-sky.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Fri, 23 Aug 2019 16:56:04 +0800
Message-ID: <CAEbi=3fbe9zbsLyfA=s9gHtAFJrp5Ox0jWoAqcZudQ_xODicgA@mail.gmail.com>
Subject: Re: [PATCH V5 1/3] riscv: Add perf callchain support
To: Mao Han <han_mao@c-sky.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_015642_112652_927B66E5 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTWFvLAoKTWFvIEhhbiA8aGFuX21hb0BjLXNreS5jb20+IOaWvCAyMDE55bm0OOaciDIz5pel
IOmAseS6lCDkuIvljYgyOjE25a+r6YGT77yaCgo+Cj4gVGhpcyBwYXRjaCBhZGQgc3VwcG9ydCBm
b3IgcGVyZiBjYWxsY2hhaW4gc2FtcGxpbmcgb24gcmlzY3YgcGxhdGZvcm0uCj4gVGhlIHJldHVy
biBhZGRyZXNzIG9mIGxlYWYgZnVuY3Rpb24gaXMgcmV0cmlldmVkIGZyb20gcHRfcmVncyBhcwo+
IGl0IGlzIG5vdCBzYXZlZCBpbiB0aGUgb3V0bW9zdCBmcmFtZS4KPgo+IFNpZ25lZC1vZmYtYnk6
IE1hbyBIYW4gPGhhbl9tYW9AYy1za3kuY29tPgo+IENjOiBQYXVsIFdhbG1zbGV5IDxwYXVsLndh
bG1zbGV5QHNpZml2ZS5jb20+Cj4gQ2M6IEdyZWVudGltZSBIdSA8Z3JlZW4uaHVAZ21haWwuY29t
Pgo+IENjOiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNpZml2ZS5jb20+Cj4gQ2M6IGxpbnV4LXJp
c2N2IDxsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnPgo+IENjOiBDaHJpc3RvcGggSGVs
bHdpZyA8aGNoQGxzdC5kZT4KPiBDYzogR3VvIFJlbiA8Z3VvcmVuQGtlcm5lbC5vcmc+Cj4gLS0t
Cj4gIGFyY2gvcmlzY3YvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDMgKwo+ICBhcmNoL3Jp
c2N2L2tlcm5lbC9NYWtlZmlsZSAgICAgICAgIHwgICAzICstCj4gIGFyY2gvcmlzY3Yva2VybmVs
L3BlcmZfY2FsbGNoYWluLmMgfCAxMTUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L2tlcm5lbC9wZXJmX2NhbGxjaGFpbi5j
CgpJIGp1c3QgdGVzdGVkICIuL3BlcmYgcmVjb3JkIC1lIGNwdS1jbG9jayAtLWNhbGwtZ3JhcGgg
ZnAgbHMiIG9uClVubGVhc2hlZCBib2FyZCBhbmQgSSBnb3QgdGhpcyBmYWlsdXJlLgpJIHRha2Ug
YSBsb29rIGF0IGl0LiBJdCBzZWVtIGZhaWxlZCBpbiBoZXJlLiBEbyB5b3UgaGF2ZSBhbnkgaWRl
YT8KSXQgc2VlbXMgZmluZSBpbiBRZW11LgoKMSAqZnJhbWUgPSAqKChzdHJ1Y3Qgc3RhY2tmcmFt
ZSAqKWZyYW1lLT5mcCAtIDEpOwpmZmZmZmZlMDAwMWExOThjOiAwMDg2M2E4MyBsZCBzNSw4KGEy
KQpmZmZmZmZlMDAwMWExOTkwOiBmZjA5MzkwMyBsZCBzMiwtMTYoczIpCgouL3BlcmYgcmVjb3Jk
IC1lIGNwdS1jbG9jayAtLWNhbGwtZ3JhcGggZnAgbHMKWyA5NjE5LjQyMzg4NF0gaHJ0aW1lcjog
aW50ZXJydXB0IHRvb2sgNzMzMDAwIG5zClsgOTYxOS45NzcwMTddIFVuYWJsZSB0byBoYW5kbGUg
a2VybmVsIHBhZ2luZyByZXF1ZXN0IGF0IHZpcnR1YWwKYWRkcmVzcyBmZmZmZmZmZmZmZmZmZjk0
ClsgOTYyMC4yMTQ3MzZdIE9vcHMgWyMxXQpbIDk2MjAuMjg5ODkzXSBNb2R1bGVzIGxpbmtlZCBp
bjoKWyA5NjIwLjM5MTM3OF0gQ1BVOiAwIFBJRDogMjY0IENvbW06IGxzIE5vdCB0YWludGVkCjUu
My4wLXJjNS0wMDAwMy1nYjAwOGY2YmNkNjdjICM0ClsgOTYyMC42NDAxNzZdIHNlcGM6IGZmZmZm
ZmUwMDAxYTE5OGMgcmEgOiBmZmZmZmZlMDAwMWExOTlhIHNwIDoKZmZmZmZmZTAwMDA5MzcyMApb
IDk2MjAuODgwMzY2XSBncCA6IGZmZmZmZmUwMDA5N2RhZDggdHAgOiBmZmZmZmZlMDAwMDgyZTQw
IHQwIDogMDAwMDAwMDAwMDA0NjAwMApbIDk2MjEuMTIwNTY0XSB0MSA6IDAwMDAwMDAwMDAwMDAw
MDIgdDIgOiAwMDAwMDAwMDAwMDAwMDA3IHMwIDogZmZmZmZmZTAwMDA5Mzc2MApbIDk2MjEuMzYw
NzY4XSBzMSA6IGZmZmZmZmUwMDAwOTM3ODggYTAgOiAwMDAwMDAwMDAwMDAwMDAzIGExIDogMDAw
MDAwMDAwMDAwMDAwMApbIDk2MjEuNjAwOTkxXSBhMiA6IGZmZmZmZmZmZmZmZmZmOGMgYTMgOiAw
MDAwMDAwMDAwMDAxZmEwIGE0IDogMDAwMDAwMDAwMDAwMDAxMApbIDk2MjEuODQxMTgxXSBhNSA6
IDAwMDAwMDAwMDAwMDAwMDIgYTYgOiAwMDAwMDAwMDAwMDAwMDAxIGE3IDogZmZmZmZmZTA3OWIz
NGUxMApbIDk2MjIuMDgxNDAwXSBzMiA6IGZmZmZmZmZmZmZmZmZmOWMgczMgOiBmZmZmZmZlMDAw
MDAwMDAwIHM0IDogMDAwMDAwMDAwMDAwMWZmOApbIDk2MjIuMzIxNjE4XSBzNSA6IGZmZmZmZmUw
MDAwOTNkYTAgczYgOiBmZmZmZmZlMDAwOTdkNTQwIHM3IDogZmZmZmZmZTA3YTE1MTdhMApbIDk2
MjIuNTYxODExXSBzOCA6IDAwMDAwOGJmMDFjN2ZmNjAgczkgOiBmZmZmZmZlMDAwMjM1YjJhIHMx
MDogMDAwMDAwMDIwMDAwMDEyMApbIDk2MjIuODAyMDE1XSBzMTE6IDAwMDAwMDAwMDAwMDAwMDEg
dDMgOiBmZmZmZmZlMDc5YjM0ZTAwIHQ0IDogMDAwMDAwMDAwMDAwMDAwMQpbIDk2MjMuMDQyMTk0
XSB0NSA6IDAwMDAwMDAwMDAwMDAwMDggdDYgOiBmZmZmZmZlMDAwOTIwOGQwClsgOTYyMy4yMTg3
ODVdIHNzdGF0dXM6IDAwMDAwMDAyMDAwMDAxMDAgc2JhZGFkZHI6IGZmZmZmZmZmZmZmZmZmOTQK
c2NhdXNlOiAwMDAwMDAwMDAwMDAwMDBkClsgOTYyMy40OTA4NTBdIC0tLVsgZW5kIHRyYWNlIDQ5
MDQzZjI4ZTg1NmQ4NGQgXS0tLQpbIDk2MjMuNjQ0MjE3XSBLZXJuZWwgcGFuaWMgLSBub3Qgc3lu
Y2luZzogRmF0YWwgZXhjZXB0aW9uIGluIGludGVycnVwdApbIDk2MjMuODU1NDcwXSBTTVA6IHN0
b3BwaW5nIHNlY29uZGFyeSBDUFVzClsgOTYyMy45ODU5NTVdIC0tLVsgZW5kIEtlcm5lbCBwYW5p
YyAtIG5vdCBzeW5jaW5nOiBGYXRhbCBleGNlcHRpb24gaW4KaW50ZXJydXB0IF0tLS0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1h
aWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
