Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6614DF7F
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 06:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6k1MllBe3CEbVhEXwSavE8e18HIvYnyS33RzeR73nP8=; b=eXjNoa+bPV1wDs
	KJVgnuNRp0sHTZEFo2En4IQlSfX9e0QRuB9/TF5cHJEsaIaZKIE55Hfzl/U0mWC2QYrSDSg0PTR0P
	ZLCLPWX8tGvvYCaSvIsPSUWfOIrOlbgFTS8Uo0frz5pgpNlXcUVWrpFAHue6AzN4BoeweWLXnAAQ7
	XkJ/Xd3wF37Iqpk5Iq8NlLyu3bI/DjsVs6UYo7YzLUehol/rAH0eFV1VZilPrZbcVnSwNg1Vw+tTu
	ZB9X7jOQFNLMWJU+MukexAyF9UMlKPZTLx/c6i3XHAJ7jKlT9Y1CsyLlQqtR8wmU4qzbKD1hFOmPW
	3oNBPGVbPXynYOLDzbFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heAqF-0006oo-65; Fri, 21 Jun 2019 04:07:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heAqB-0006oL-TC
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 04:07:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so5030279wrw.13
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 21:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l2qJZeX5x3cKGQw0vTTuaqutXh5bsa0FkF9NdW7kUBY=;
 b=mjgqzGt+wVp/satKRCHmZUpKgSeGyInSJNxLH3k63ifB/b4YwRIl8G01sT5VHFFUD/
 mqToMa+bBGbsqjo5py89BogBlgilYhuVde2lbTzbsa/TTuCDANLf5/knRg/sF1NCu8zY
 DmDqWLRT+oJH253taX06Pu/CgXvipqr8k51tpUiH5MIhM8U6ADKo4tD3QshtyAwlkiVG
 LOULJY+JQwwWrIaPejTI4oMSC2nzYPt8SJ36b6I/uwZub8+N5sFTsJy6McECrD45YwLJ
 VPbVyWMqo5kEDBYcD/DUjlVdF5/ADmwThVp7zU3ToyA2DHmWvUGFRyq3f6PZcTeRV5Z4
 zEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l2qJZeX5x3cKGQw0vTTuaqutXh5bsa0FkF9NdW7kUBY=;
 b=K8sISBwDPkj0B1O7JCvcDOzplM0ytep5j3A5t1b6NAd6QppY9R79Wwq0D8JH1lX9E7
 0SnB4h5y0oW8ud7kWLSgEXqqMog2vFbooGaOK4h0ALaKepXJxypEKfJrdy6hmdcRJB0h
 grd7xilxqcIg6/q3ydUpJkWRUtBFFQTYAxDpBRq3b1506tV50w6TjCbJvmGWJe2wd7xY
 qGUWQvxloyGb7/srHmmLwqQ7dG4Kkt8BnSWNZYYnBmscM9Vvth5emjuq9L0HCkcOdjxb
 nvl/Bo8icH+uug14NIHIVPHsSpBMH/g7+U8iAAz+ux61zxbV+6XWsogRKw2gooDuAGRX
 Ixvg==
X-Gm-Message-State: APjAAAVBKekxV3L1RAQPU2qeecKytA8PSeOd1R9aIvrEiNGvZ5TmKvnE
 qqXLC0YmbS3JufgIYDQcIT9H40+WEwxhJU4stJOWVQ==
X-Google-Smtp-Source: APXvYqxQbqCtj46iBRW/rPMZKaEXYz9Gg8gZcOj06ZDJbDVyT3XIQXtgsSygjnVgmynZ4pqppp1SZsUSOQvjNQkgMAI=
X-Received: by 2002:adf:afe8:: with SMTP id y40mr14570674wrd.328.1561090074071; 
 Thu, 20 Jun 2019 21:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
 <d66f7e401e27bcc486e6cf94eab3fd2ad9c0be30.camel@wdc.com>
 <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
In-Reply-To: <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Jun 2019 09:37:42 +0530
Message-ID: <CAAhSdy2CW_G28D41n1q_xR29tCJomOiPHXp2L18tB4h9Z357JA@mail.gmail.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_210756_043284_25DB4586 
X-CRM114-Status: GOOD (  30.21  )
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
Cc: Rick Chen <rickchen36@gmail.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "mafm@debian.org" <mafm@debian.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 Atish Patra <Atish.Patra@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "lukas.auer@aisec.fraunhofer.de" <lukas.auer@aisec.fraunhofer.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "wxjstz@126.com" <wxjstz@126.com>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>, "hch@lst.de" <hch@lst.de>,
 "merker@debian.org" <merker@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 12:10 AM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Thu, Jun 20, 2019 at 8:58 PM Atish Patra <Atish.Patra@wdc.com> wrote:
> >
> > On Thu, 2019-06-20 at 08:50 +0530, Anup Patel wrote:
> > > On Thu, Jun 20, 2019 at 1:36 AM Atish Patra <Atish.Patra@wdc.com>
> > > wrote:
> > > > On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> > > > > Hi All,
> > > > >
> > > > > We have been waiting for upstream kernel to boot on HiFive
> > > > > Unleashed
> > > > > for some time. Finally, all the required drivers will be
> > > > > available in
> > > > > 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging.
> > > > > Yay!!
> > > > >
> > > > > However, the DT/drivers in kernel are not backward compatible
> > > > > with
> > > > > the
> > > > > DT provided by FSBL. That means, everybody need to upgrade to the
> > > > > new
> > > > > DT if they want to use upstream kernel. Here are some possible
> > > > > approaches to allow a smooth transition.
> > > > >
> > > > > 1. Embedd the DT in OpenSBI directly and build it by default for
> > > > > unleashed platform. (discussed in OpenSBI mailing list [3])
> > > > >
> > > > > Pros: No change in anybody's build system as long as they use
> > > > > latest
> > > > > OpenSBI.
> > > > >
> > > > > Cons: This sets a bad precedent for future platforms as OpenSBI
> > > > > should
> > > > > not be the place to keep/maintain device tress.
> > > > >
> > > > > It will also break non-Linux OS that have not upgraded their DT
> > > > > to
> > > > > match with kernel.
> > > > >
> > > > > 2. Link the updated DTB maintained by kernel using
> > > > > FW_PAYLOAD_FDT_PATH
> > > > > in OpenSBI.
> > > > >
> > > > > Pros: DT is maintained by kernel and OpenSBI just use the already
> > > > > built
> > > > > DTB.
> > > > >
> > > > > Cons: Creates a dependancy on Linux build system.
> > > > > All Linux distro maintainers now have to update their build
> > > > > script to
> > > > > add that option and all documentation need to be updated.
> > > > >
> > > > > 3. Update FSBL:
> > > > >
> > > > > Pros: Cleanest approach.
> > > > >
> > > > > Cons: Everybody has to upgrade the FSBL which is not a simple ask
> > > > > for
> > > > > everyone. There is no FSBL binary available publicly as well. So
> > > > > everybody has to build FSBL first.
> > > > >
> > > > > Any other possible solutions?
> > > > >
> > > > > Till now, 2 seems to be the preferred choice for now. Approach 3
> > > > > is
> > > > > also okay for longer term solution (given that FSBL binary and
> > > > > instructions are available timely). But approach 2 requires extra
> > > > > work
> > > > > on distro maintainers. That's why we want to get an agreement
> > > > > with
> > > > > them
> > > > > before recommonding any specific approach to anybody in the
> > > > > community.
> > > > >
> > > > > Thoughts ?
> > > > >
> > > >
> > > > Argh. I messed up the subject line first time.
> > > > Sorry for the noise.
> > >
> > > I have 4th option which is even cleaner that 3rd option
> > >
> > > 4. U-Boot_SPL/Coreboot replace FSBL
> > > The U-Boot_SPL/Coreboot will replace FSBL and load OpenSBI
> > > FW_DYNAMIC, Platform DTB, and U-Boot_S_mode from boot
> > > device (MMC/Flash). We can update OpenSBI FW_DYNAMIC,
> > > Platform DTB, or U-Boot_S_mode separately anytime without
> > > updating other images.
> > >
> > > Pros: Better than option 3
> > >
> > > Cons: None that I can think of.
> > >
> > > IMHO, it's right time replace FSBL with U-Boot_SPL/Coreboot
> > > once and for all.
> >
> > +Lukas, + Xiang
> >
> > I completely agree that replacing FSBL with U-Boot SPL/coreboot is the
> > best possible solution. However, the implementation of either one is
> > not available upstream. Please correct me if I am wrong.
> >
> > So we need an intermediate solution until that happens. It seems that
> > approach 2 is okay with majority. We have not heard anything from
> > Fedora/debian folks though.
> >
>
> Here is my opinion from Fedora camp.
>
> The preferred option would be U-Boot SPL for already mentioned
> reason:
> "... for the reason of using the same bootloader technology stack."
>
> We already ship U-Boot SPL binaries for a high number of AArch64
> and ARMv7 boards. Ideally we don't want to depend on external DTBs
> stored in /boot (like it's done in Fedora ARMv7). The default DTB should
> be built into the firmware (FSBL-style), but there might be an option
> to pass external one for development/debugging reasons (i.e. override
> the default one in firmware).
>
> For me firmware (incl. DTB) is part of hardware.
>
> SiFive Unleashed is a development board with a test chip, and it ships
> in a low volumes thus right now I would just rebuild FSBL with new DTB
> and provide instructions how to flash it.

Here's the link to U-Boot patches:
https://patchwork.ozlabs.org/cover/1119206/

These patches update U-Boot documentation as well.

If the above patches make it to U-Boot-2019.07 then we will have
U-Boot-2019.07, OpenSBI v0.4, and Linux-5.3 work unmodified
with Ethernet available in both U-Boot and Linux.

Of course, we will also need Atish's image header patch and Yash's
ethernet DT node patch merged in Linux-5.3 as well.

We are quite close in having all upstream components working on
SiFive Unleashed board except FSBL.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
