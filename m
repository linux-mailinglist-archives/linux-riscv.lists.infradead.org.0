Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048007E7C0
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 04:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQ636zgZVHWxVAi0eLNRhoevw94UiCysfdYbR2uySUo=; b=BxGQwaosepVnkN
	ttPB7aOsA9K4AFfEFCb8bEwEBJ0YKYLFXzIghsRmYi3nH0qmqh1eOqRrXA77ZBm/CFeiAaRfBL5QP
	X72oAaxXCccESedtJ09CDjMA3pW6eZgo0W6hZmnTkdlOodwe0ukTl1Z+SxCvglj6Yp9rAqj3xE9QJ
	av2HGTlmYzhxYnjNZ4ALgm7GwE281CEbayQ76x+pLCNPJ+hkmmTGpPiACJMYyfFB2EE7Hq5FqjN8k
	fdokTrM4HvVFW376LvIw7hqBQ3hFjxjVmOiWxzHF8ZGEsve5g8uQ94Ii5KTDDvmkYczIRlG80Qzr2
	ujD7+SbEkmZo9RFJ+XgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htN6f-0007lb-EU; Fri, 02 Aug 2019 02:15:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htN6a-0007ki-VH
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 02:15:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id r1so75494871wrl.7
 for <linux-riscv@lists.infradead.org>; Thu, 01 Aug 2019 19:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/75YpogZ7MavM1rM5AwCI4fwCcwz0rXx/M91/3Zlk4w=;
 b=dkfm3YUWpIbKcmnDtOBnwc5tJm4Q/9z1ESvx9FnBhj68sSauXIhFEa3StTpyTQeMD9
 5uwuhfCAgo3H9EET+EiQINbSeT98V9CZjgvlmsyEgx1m32FIQSh62sIZNANW0NWDCLSw
 0m1aRb1HCKPASUmrTlnkC7y6ICBgTfxZFzbPsUmOt6GR7K7E/f2v9L3lilmWSQmRsl6N
 KGEMerFnfS5GF22Dtv4K28p2nww+1NyCDd2jawhylvRXc2EaRBUH+mPYyWyKrGXGerS0
 lrbOtoEXN/is0G0zUU/l6ERrg1Zr2/z7QJfruQqqGnr/QNLsoQZQZOYV+t1TgfeBzkQn
 g2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/75YpogZ7MavM1rM5AwCI4fwCcwz0rXx/M91/3Zlk4w=;
 b=H+LAI3ZjYfbRtNC4vweFcSe21PAvKVurs/HYkl52uNuj4xlAvwMWymxKrcZk8HjvxM
 k4veANbDhApMSi90Xr4v6saOKjGzW7FAQj9OjwpaiQwvjRLyx5I54Ys44BL/Vg4VnDie
 yi+AweUZxJ23dstsa0qI38WF0KAz9cNnP+IwQ6K8Kn3MSi+TJZm5UtfelLQpf+7lQdDY
 y4cPfNP8ev7JkVmZRbsPGGaOu57tYPFiIoybeh6Y4+8EP7az/0v4HT2l5oCYOWrjACIc
 9Wo+FaFJ7HSd1IgCw2XfSnbjljTigUngV2/XSS2Rl1RTPKD5mp8xx1kSBH8DpNu4ar4G
 bs1Q==
X-Gm-Message-State: APjAAAVi2Zo32FistQ258e15PV9itz4XxsgJnlmnO73jhf0R1Pgi3PNE
 6P9E7BEDe+zAe7j2iDioJpF+VQ8m6p8k+f+dObk=
X-Google-Smtp-Source: APXvYqyyoyWJ7ZhC7D/LbbQRKxQeIkWUHjdQzvCoUtAuJHjio2QmUYXSO9VgrmM6UkPjx0HbvLKuNAtx48Wj76rWJBc=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr65936769wrw.323.1564712138571; 
 Thu, 01 Aug 2019 19:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
In-Reply-To: <mvmwofw68ji.fsf@suse.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 2 Aug 2019 07:45:27 +0530
Message-ID: <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
Subject: Re: Random memory corruption with v5.2
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_191541_149944_467218C3 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 OpenSBI <opensbi@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 12:02 AM Andreas Schwab <schwab@suse.de> wrote:
>
> On Jul 30 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> > On Tue, 30 Jul 2019, Andreas Schwab wrote:
> >
> >> On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com> wrote:
> >>
> >> > On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de> wrote:
> >> >>
> >> >> Since switching to 5.2 kernels I'm seeing random crashes and
> >> >> misbehaviors on the HiFive, for example while building gcc or glibc.
> >> >> Perhaps missing TLB flushes?
> >> >
> >> > Do you have some examples of crashes?
> >>
> >> While building glibc:
> >>
> >> an_ES.UTF-8...realloc(): invalid pointer
> >> /bin/sh: line 1:  7841 Aborted                 (core dumped) I18NPATH=. GCONV_PATH=/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/iconvdata LC_ALL=C /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf/ld-linux-riscv64-lp64d.so.1 --library-path /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/math:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/dlfcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nss:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/resolv:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef $flags --alias-file=../intl/locale.alias -i locales/$input -f charmaps/$charset --prefix=/home/abuild/rpmbuild/BUILDROOT/glibc-2.29-0.riscv64 $locale
> >> make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8] Error 134
> >>
> >> While building gcc:
> >>
> >> ../../gcc/ada/exp_aggr.adb: In function 'Exp_Aggr.Expand_N_Aggregate':
> >> ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used uninitialized in this function [-Wmaybe-uninitialized]
> >> ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
> >> +===========================GNAT BUG DETECTED==============================+
> >> | 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-suse-linux) |
> >> | Storage_Error stack overflow or erroneous memory access                  |
> >> | Error detected at output.ads:39:8                                        |
> >> realloc(): invalid pointer
> >
> > I personally haven't seen these issues; but then again, I haven't done any
> > glibc or gcc builds on v5.2.  Will take a closer look.
>
> I think there is some fundamental problem with SBI_REMOTE_SFENCE_VMA or
> the kernel interface to it.
>
> For exmaple, flush_tlb_page is defined as:
>
> #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
>
> But the third argument of flush_tlb_range is supposed to be the end
> address, so this should actually be:
>
> #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)

Instead of this can you try -1UL as the size:
#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, -1UL)

If above works for you then there is some issue with range of virtual
memory we flush.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
