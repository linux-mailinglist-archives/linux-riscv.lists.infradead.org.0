Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9781F6CC0
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 19:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv2kS6G3o83f2mBPnYmMpo8TuJCcISodnEkPwPcYQnE=; b=RhwAe0nd/GwSUQ
	rpYwqwfLvopOYId1+37/G3Yv0GUCTrFvCHq9Qy8a9PyXCreTBGPtIVRxPGGssPlaGvP4CgPmCXDK9
	l9ZTs8D5CCwJbwnFI1YXJ3kp3D7tG4ughOGfjIomNEHTPghGJchWKOEuFQ4emPTUnjAastQnnL7cC
	hhRSxtGv8KZ9WaNhNLLawr5t7QUnh82SSbfkV60pT6XpW64JuhC7t7RBID9azha8NvuCjzojPEd/0
	6i2om3c71atA1LLF1lQcnZE5/nszIBCNZNe2fcU6rQtSxn8fwKuggDe0OsEXemuBxwUvV7Dx7poPc
	WPRGUj5NDlRGH5TxYtEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjR18-00025l-49; Thu, 11 Jun 2020 17:29:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjR14-00025N-Gr
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 17:29:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id x14so7024672wrp.2
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 10:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Gv2kS6G3o83f2mBPnYmMpo8TuJCcISodnEkPwPcYQnE=;
 b=BOrhAO2vWpMDso2mx5GwRjXpyvGIn++k+1R00OaP5mChKpAlscrEZsqwuF1TYhbAV4
 OoIqjEtayPMVIGwtgDZHlAL8y/gc6CxGKQ2kGcL89SMHnAN4XqG8pAJsoYHrARWHFs76
 Y0j6HMJIuKh8GQpVOZQagPjv2rsu1J4B6uD6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Gv2kS6G3o83f2mBPnYmMpo8TuJCcISodnEkPwPcYQnE=;
 b=UrgHeObCz7gLPKiKDEtSVwjvQeJeK7ccAO5WFwijQq1dnp1it3lBMA2DEpQerMrsMl
 +Iho6SEvVeRCqADixDVFjks+wuic2l1tcSFKfUmqjMwW499KKByCQCLvU0AanWkiRYwS
 6hNUVXWKI3hahuVPipq+IXqHQ3DrFqXlArx+dPyStk+dVm3IDwgnrJuJy+F0nfWd7YTK
 EujtcR1R2wgXhwGycTR8ZHnSYsnw9gbIeeVrPr2kYSndqtYyjlPXT1mQhg+bWj22iMTZ
 KSqPuMM06tOhM7l4mhF5/mP6ifpAdz/R/n2nxc6Oys75O8vcRO0svBeaAQGl1T1dliKo
 ucNQ==
X-Gm-Message-State: AOAM533gCezglysxepMlaNV6s2Wd9uF1lBWOf/LHrF6PN0IxokXT1nVw
 yruQXfmYUYh3xyVztfXvpFo+gEUqxLVFNh39N6sI+Dc=
X-Google-Smtp-Source: ABdhPJyWWL+hUtM4a2VwYzffSh78HZlncIF/3sL9ZnNp2EfXeeeH93J0EfETtmyORukse0dSa18u+e3xo+ODmWtN0MI=
X-Received: by 2002:adf:edc8:: with SMTP id v8mr10227082wro.176.1591896563205; 
 Thu, 11 Jun 2020 10:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200603153608.30056-1-alex@ghiti.fr>
 <CAOnJCUJSKvLDsXC8+wyO1xsZDzLJmjY2kwMKhjz0t+uS8h0pDw@mail.gmail.com>
 <7ad7057e-fdab-14ef-9bdb-c77ccefd208a@ghiti.fr>
In-Reply-To: <7ad7057e-fdab-14ef-9bdb-c77ccefd208a@ghiti.fr>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 11 Jun 2020 10:29:12 -0700
Message-ID: <CAOnJCUKcMmchxgeHNx997EH5JM_OAJFUDCNT6Ca2B-xHE4YT5A@mail.gmail.com>
Subject: Re: [PATCH 0/2] PUD/PGDIR entries for linear mapping
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_102926_622186_A8DBC4E3 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 11:51 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Atish,
>
> Le 6/10/20 =C3=A0 2:32 PM, Atish Patra a =C3=A9crit :
> > On Wed, Jun 3, 2020 at 8:36 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
> >> This small patchset intends to use PUD/PGDIR entries for linear mappin=
g
> >> in order to better utilize TLB.
> >>
> >> At the moment, only PMD entries can be used since on common platforms
> >> (qemu/unleashed), the kernel is loaded at DRAM + 2MB which dealigns vi=
rtual
> >> and physical addresses and then prevents the use of PUD/PGDIR entries.
> >> So the kernel must be able to get those 2MB for PAGE_OFFSET to map the
> >> beginning of the DRAM: this is achieved in patch 1.
> >>
> > I don't have in depth knowledge of how mm code works so this question
> > may be a completely
> > stupid one :). Just for my understanding,
> > As per my understanding, kernel will map those 2MB of memory but never =
use it.
> > How does the kernel ensure that it doesn't allocate any memory from tho=
se 2MB
> > memory if it is not marked as reserved?
>
> Yes, a 1GB hugepage will cover those 2MB: I rely on the previous boot
> stage to mark this region
> as reserved if there is something there (like opensbi). Otherwise, the
> kernel will indeed try to
> allocate memory from there :)
>
In that case, this patch mandates that the firmware region has to be
mark "reserved"
the device tree so that the Linux kernel doesn't try to allocate
memory from there.
OpenSBI is already doing it from v0.7. Thus, any user using latest
OpenSBI can leverage
this patch for a better TLB utilization.
However, legacy previous boot stages(BBL) do not reserve this area via
DT which may
result in an unexpected crash. I am not sure how many developers still
use BBL though.

Few general suggestions to tackle this problem:
1. This mandatory requirement should be added to the booting document
so that any other
SBI implementation is also aware of it.
2. You may have to move the patch1 to a separate config so that any
users of legacy boot stages
can disable this feature.

> Alex
>
>
> >> But furthermore, at the moment, the firmware (opensbi) explicitly asks=
 the
> >> kernel not to map the region it occupies, which is on those common
> >> platforms at the very beginning of the DRAM and then it also dealigns
> >> virtual and physical addresses. I proposed a patch here:
> >>
> >> https://github.com/riscv/opensbi/pull/167
> >>
> >> that removes this 'constraint' but *not* all the time as it offers som=
e
> >> kind of protection in case PMP is not available. So sometimes, we may
> >> have a part of the memory below the kernel that is removed creating a
> >> misalignment between virtual and physical addresses. So for performanc=
e
> >> reasons, we must at least make sure that PMD entries can be used: that
> >> is guaranteed by patch 1 too.
> >>
> >> Finally the second patch simply improves best_map_size so that wheneve=
r
> >> possible, PUD/PGDIR entries are used.
> >>
> >> Below is the kernel page table without this patch on a 6G platform:
> >>
> >> ---[ Linear mapping ]---
> >> 0xffffc00000000000-0xffffc00176e00000    0x0000000080200000 5998M PMD =
    D A . . . W R V
> >>
> >> And with this patchset + opensbi patch:
> >>
> >> ---[ Linear mapping ]---
> >> 0xffffc00000000000-0xffffc00140000000 0x0000000080000000         5G PU=
D     D A . . . W R V
> >> 0xffffc00140000000-0xffffc00177000000    0x00000001c0000000 880M PMD  =
   D A . . . W R V
> >>
> >> Alexandre Ghiti (2):
> >>    riscv: Get memory below load_pa while ensuring linear mapping is PM=
D
> >>      aligned
> >>    riscv: Use PUD/PGDIR entries for linear mapping when possible
> >>
> >>   arch/riscv/include/asm/page.h |  8 ++++
> >>   arch/riscv/mm/init.c          | 69 +++++++++++++++++++++++++++++----=
--
> >>   2 files changed, 65 insertions(+), 12 deletions(-)
> >>
> >> --
> >> 2.20.1
> >>
> >>
> >



--=20
Regards,
Atish

