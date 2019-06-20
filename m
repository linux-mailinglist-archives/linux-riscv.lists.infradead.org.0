Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B90D24D0A0
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 16:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR/TtmBVWF1r24A+yzyIiQ0nB2pLgLiHNv2dB8eGaa8=; b=QRDG++AdcgB/w/
	tqJXq1waBNlxvA9ZrZvYORx3lf+3Cu5h4hPS6MOQ33PhiezOw3ezegb7h6Qj2aT+trLv4rOfJCLic
	euSqb5+C75ZQ10pArcpRNMc7yjQSDH5RLi9HMUNaP3OlmE/cHc6ay8+UlaIFS4T1cmGhyhwywqugH
	lzCG2NoEHzgkLjEcD83cV0xjxdQMo3yZGZQKUk0Il6iOmC0LdeK8Ak9QCs32tsJrIhZQVD+S+gmPU
	fBf//k18+6Lu8hqzHUxN9/tR5CdyauMSJrKfYhxgEjHaQc38bFEy8035S3PSMeExTgJX49MBFIgNk
	NY+U07QVT86flCeAxaQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyK9-00035C-Bm; Thu, 20 Jun 2019 14:46:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyK3-00034a-US
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 14:45:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so3368314wru.0
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 07:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gaveeykZCuc6rhknJAbNYw+0ssX7OmwtnZ35lLkglWU=;
 b=F3JliVQr/EilObN3GPmOQVTLgeWQ8+xQqmA9ce13DJE7npAkQaKQvfr7ZPu0t5VSPZ
 nFU6rIbQ4IypA8kGM3ZaqkcenuWbylbMUpGqXjIB23m4LQvXsyAjeSXSqab0eGwn8caR
 IdwgJCjHVrA37wMrzUPjd9cVa+Z/WnrCtTpPKVmBCeQbrct1f+ry0o0ePnJ70gUcvvP7
 eWJhAb642xkK6RKXbi526PQEamiLXC5NYhKzxpcz0Dly1GFlbkJ80MtiBSz1WKT0waFE
 yCor9hSDIzuk01JWIfhwnzaZo0XPj+iqCP15w0pYRSs9MbZhYTnvXpIIzBzTLkY2cc37
 h77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gaveeykZCuc6rhknJAbNYw+0ssX7OmwtnZ35lLkglWU=;
 b=h7guvTH4X6gqDJFxVe1SzEm4NQ22Oy4JKIt+AlRQpbOha6Zjh/ht1GS89JQv6dGBz+
 +WltFpG9gdn5qIS7DqQA91KwLKVEzxYA6LTILhvcViDLSzm97qUkByQcntDsi7ERcCim
 XvRym9VmFa+4MLOEV51xLvDV36taJVkyMMU4SCK5ZRXHDCCSnzcSGf4bT5oBpIf9KSQA
 tuuEd+WjsVQ6ltddxc7UUpF2NTERPlCnBX5eFjbMScMK7HJEOAmP8pWsZyA+0fm/5qnz
 KgjdVk04oFCBegg9FYtEO6bY7prtaZNU4lw2Yc/tJJG+vb8sSLIWdwVhUophJMhXXd+V
 nvcA==
X-Gm-Message-State: APjAAAWfyVqcMMFV/AdMaTlNj68zhjpfsYfMG5K2X81yjhcg2djXeV6U
 TxjD0nYn746yoKNcSXAh53AuvvQuLYQX3OnvfU1lwA==
X-Google-Smtp-Source: APXvYqwYFToq9bRTlNqy2Fn0Z67tD0ZPKirGbqLjHGPyhNkfSmJsT9b2lXahvLdYHn2/IoWDHs1RK3wF48rgDTKzhvI=
X-Received: by 2002:adf:f581:: with SMTP id f1mr398454wro.179.1561041953400;
 Thu, 20 Jun 2019 07:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
 <CAEUhbmUyJKRaP+hHHmc_JuP808CdKCU3sDLD7mN==FDWew3BmA@mail.gmail.com>
In-Reply-To: <CAEUhbmUyJKRaP+hHHmc_JuP808CdKCU3sDLD7mN==FDWew3BmA@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 20 Jun 2019 20:15:42 +0530
Message-ID: <CAAhSdy0THHbdHbfcpiTjyrj-HA2HacejJjCwucss1CfnMYYiHA@mail.gmail.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
To: Bin Meng <bmeng.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074556_194481_CAE205E6 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, "mafm@debian.org" <mafm@debian.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>, Atish Patra <Atish.Patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 7:14 PM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> Hi Anup,
>
> On Thu, Jun 20, 2019 at 11:20 AM Anup Patel <anup@brainfault.org> wrote:
> >
> > On Thu, Jun 20, 2019 at 1:36 AM Atish Patra <Atish.Patra@wdc.com> wrote:
> > >
> > > On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> > > > Hi All,
> > > >
> > > > We have been waiting for upstream kernel to boot on HiFive Unleashed
> > > > for some time. Finally, all the required drivers will be available in
> > > > 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging. Yay!!
> > > >
> > > > However, the DT/drivers in kernel are not backward compatible with
> > > > the
> > > > DT provided by FSBL. That means, everybody need to upgrade to the new
> > > > DT if they want to use upstream kernel. Here are some possible
> > > > approaches to allow a smooth transition.
> > > >
> > > > 1. Embedd the DT in OpenSBI directly and build it by default for
> > > > unleashed platform. (discussed in OpenSBI mailing list [3])
> > > >
> > > > Pros: No change in anybody's build system as long as they use latest
> > > > OpenSBI.
> > > >
> > > > Cons: This sets a bad precedent for future platforms as OpenSBI
> > > > should
> > > > not be the place to keep/maintain device tress.
> > > >
> > > > It will also break non-Linux OS that have not upgraded their DT to
> > > > match with kernel.
> > > >
> > > > 2. Link the updated DTB maintained by kernel using
> > > > FW_PAYLOAD_FDT_PATH
> > > > in OpenSBI.
> > > >
> > > > Pros: DT is maintained by kernel and OpenSBI just use the already
> > > > built
> > > > DTB.
> > > >
> > > > Cons: Creates a dependancy on Linux build system.
> > > > All Linux distro maintainers now have to update their build script to
> > > > add that option and all documentation need to be updated.
> > > >
> > > > 3. Update FSBL:
> > > >
> > > > Pros: Cleanest approach.
> > > >
> > > > Cons: Everybody has to upgrade the FSBL which is not a simple ask for
> > > > everyone. There is no FSBL binary available publicly as well. So
> > > > everybody has to build FSBL first.
> > > >
> > > > Any other possible solutions?
> > > >
> > > > Till now, 2 seems to be the preferred choice for now. Approach 3 is
> > > > also okay for longer term solution (given that FSBL binary and
> > > > instructions are available timely). But approach 2 requires extra
> > > > work
> > > > on distro maintainers. That's why we want to get an agreement with
> > > > them
> > > > before recommonding any specific approach to anybody in the
> > > > community.
> > > >
> > > > Thoughts ?
> > > >
> > >
> > > Argh. I messed up the subject line first time.
> > > Sorry for the noise.
> >
> > I have 4th option which is even cleaner that 3rd option
> >
> > 4. U-Boot_SPL/Coreboot replace FSBL
> > The U-Boot_SPL/Coreboot will replace FSBL and load OpenSBI
> > FW_DYNAMIC, Platform DTB, and U-Boot_S_mode from boot
> > device (MMC/Flash). We can update OpenSBI FW_DYNAMIC,
> > Platform DTB, or U-Boot_S_mode separately anytime without
> > updating other images.
> >
> > Pros: Better than option 3
> >
> > Cons: None that I can think of.
> >
> > IMHO, it's right time replace FSBL with U-Boot_SPL/Coreboot
> > once and for all. Also, running entire U-Boot in M-mode is just
> > an overkill.
> >
>
> I think you mean entire U-Boot "proper" in M-mode? I don't understand
> why running U-Boot in M-mode is an overkill.

I meant in-context of SiFive Unleashed boot-flow. Replacing FSBL with
U-Boot "proper" in M-mode is an overkill (my opinion).

Although, there is one use-case of U-Boot M-mode for SiFive Unleashed
board which is HW validation (mentioned by Troy).

>
> OpenSBI can be built as a generic SBI library with platform
> abstraction and used external firmware and bootloader. With such
> configuration, U-Boot can be linked with OpenSBI in M-mode. I heard
> there is an EDK2 port in progress (also M-mode?). I would say it's not
> an overkill but a validation of OpenSBI as a generic SBI library :)

When you link OpenSBI as library to external firmware (U-Boot M-mode
OR EDK2), it becomes RUNTIME SBI firmware in-addition to being a
bootloaders. This is a very different use-case as compared to replacing
FSBL.

>
> Having said that, I like the option 4 using U-Boot_SPL to replace
> FSBL, for the reason of using the same bootloader technology stack.

Yes, it nicely replaces most SiFive Unleashed boot-flow components
with U-Boot components (SPL and U-Boot proper).

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
