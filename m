Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15125201957
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 19:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1TfsvKa3VSYvLUsm39/1vD6gZx3E4N5cKl5eVm+kzs=; b=i5g+QMp2SbKMzK
	CXsY6mtMje1QTNqe1fLINwoZnLRlkOWsYaqGrN+0YKspbOh0V1bH0cOSx0dk8KtOa6J9U4ItE+92k
	XNHRCibwaFC+d0/tr+bUta+yLztE2nJwVJvEw/XIcG5DrxxrTJ4SWcRfjdDVE9VOc8PopQJ83GFuy
	XMbFCMvur4eCLPJF7dyGM27pqSq28h2O9ZP8yViLrWH0EHrnVxraZotEL3iLCcOsKp1FGOV6aJ1I7
	8/VxyXru2COKOHDcVKZXvgS9LYAh5SATC4Zp88mpO9zLIUwQe7BmMbH3A2aO3umg2NGD7RVuHwLOc
	G2TVmn5Ry4k7cmaaMh7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmKji-0000MI-1m; Fri, 19 Jun 2020 17:23:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmKjd-0000Ln-DB
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 17:23:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id h5so10456832wrc.7
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jun 2020 10:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+1TfsvKa3VSYvLUsm39/1vD6gZx3E4N5cKl5eVm+kzs=;
 b=Wd+nzmh1vsUp84KiTV54H4XNP4r6bIufAWuy7zb1I3mNaODF5FRg1wUTFOuPPLSHJq
 7Nn0xEQ8sceuReCMWdyxMeEhz/7B/xHs+rlAyDsbSVcYNDo0c9v59QKyTRW8D/7np2Du
 HlVVSFhnJcZ3pvFa9ByyNTXjx9gZiYDVZ2vCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+1TfsvKa3VSYvLUsm39/1vD6gZx3E4N5cKl5eVm+kzs=;
 b=XAoq+lMbCZcpL1coLFhVFCQ5EUmTGHpU7AOLvdM7KeQbI3BMYXaFwRFRxgwTtjDIeq
 jaSOogz2YSX0iQujjFqk31oRKpisQ14jLkY2ZKAnyGHKBnxbR5Mshm2+yPM4a7iwl6WJ
 ithqZe9e3V557fRzfEYw22Fn+EkMJqa7nNsq7vRzVG811ZsWFmq/wBwOt3/WBWXay+LA
 VwnokxfXKY+1shXMLsB1lTPkOowSn9dzjVpc0RRhQaH7XVEjCgE9QGsfoxvoxYa6w07A
 uqc1o97iOyVsaUarppAs3faCtksg35LMQ7RIJVm+nA2ce3B+zK7HO1CTeTonyX1abCzv
 H7iw==
X-Gm-Message-State: AOAM532l36Ofh96K+hqZhqD16Ci4vewenWAiO4aGJ+4s69eL2Tfuo2kv
 xul7SfHE6dhHm9pXlzL0w2woaZE5OndAmlgf5Zy4
X-Google-Smtp-Source: ABdhPJyHHFccqHn8uvTEpMyBt9B4aNnOqk+ijMJM3RzQqUtpugf0kzBx2w3x0rRv9Va5oLpDe6yi6YeGFWEHat/2QI8=
X-Received: by 2002:adf:ed05:: with SMTP id a5mr5032484wro.176.1592587403894; 
 Fri, 19 Jun 2020 10:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-524c37c9-25b7-405f-933f-2029820dbe40@palmerdabbelt-glaptop1>
 <f0e6106e0ca4c1d8a6fa33dea6ee7276@mailhost.ics.forth.gr>
In-Reply-To: <f0e6106e0ca4c1d8a6fa33dea6ee7276@mailhost.ics.forth.gr>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 19 Jun 2020 10:23:12 -0700
Message-ID: <CAOnJCUKjBTdsv=9N1sGwiOe93CMMMyPcteBCQpqOQZScJwS-_A@mail.gmail.com>
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
To: Nick Kossifidis <mick@ics.forth.gr>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_102325_515953_4B4EBF4C 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Anup Patel <anup@brainfault.org>, Atish Patra <Atish.Patra@wdc.com>,
 Liu Yibin <yibin_liu@c-sky.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 1:27 AM Nick Kossifidis <mick@ics.forth.gr> wrote:
>
> =CE=A3=CF=84=CE=B9=CF=82 2020-06-19 02:06, Palmer Dabbelt =CE=AD=CE=B3=CF=
=81=CE=B1=CF=88=CE=B5:
> > On Sat, 13 Jun 2020 00:24:01 PDT (-0700), mick@ics.forth.gr wrote:
> >> =CE=A3=CF=84=CE=B9=CF=82 2020-06-11 22:39, Palmer Dabbelt =CE=AD=CE=B3=
=CF=81=CE=B1=CF=88=CE=B5:
> >>> On Thu, 11 Jun 2020 12:09:08 PDT (-0700), mick@ics.forth.gr wrote:
> >>>> =CE=A3=CF=84=CE=B9=CF=82 2020-05-21 21:42, Nick Kossifidis =CE=AD=CE=
=B3=CF=81=CE=B1=CF=88=CE=B5:
> >>>>> =CE=A3=CF=84=CE=B9=CF=82 2020-04-24 20:12, Nick Kossifidis =CE=AD=
=CE=B3=CF=81=CE=B1=CF=88=CE=B5:
> >>>>>> This patch series adds kexec/kdump and crash kernel
> >>>>>> support on RISC-V. For testing the patches a patched
> >>>>>> version of kexec-tools is needed. The patch is still
> >>>>>> a work in progress but a draft version can be found at:
> >>>>>>
> >>>>>> http://riscv.ics.forth.gr/kexec-tools.patch
> >>>>>>
> >>>>>
> >>>>> Any comments / feedback on this ? Should we get it in ?
> >>>>>
> >>>>> Regards,
> >>>>> Nick
> >>>>
> >>>> Anyone ?
> >>>
> >>> Sorry, I dropped the ball on this one.  After the CPU hotplug
> >>> breakage
> >>> I
> >>> decided I need to get a pre-merge test for all these new features,
> >>> and
> >>> I
> >>> haven't gotten around to actually doing so yet.  The merge window is
> >>> closing
> >>> right now, so with any luck I'll have some time to get around to my
> >>> patch
> >>> backlog -- first I need to go spin up some better testing, though.
> >>
> >> Anything I can do to help ? I have a bunch of hw available (unleashed,
> >> genesys2 and nexys 2 ddr for Ariane / LowRISC SoC) and I'll probably
> >> also need to have a CI flow for the stuff I do internally.
> >
> > Well, getting CI up and running would be great -- specifically, running
> > stress
> > tests on real hardware is something we're missing.
>
> Any particular tests / test suites in mind ?
>

I quickly checked kerneci project. They regularly build and does a boot tes=
t on
HiFive unleashed. Here is the log for the last successful boot test on 5.8-=
rc1.
https://kernelci.org/test/case/id/5ee3959b44cd149f2b97bf1b/

Can we leverage the same setup locally ?

+kevin

Is there any way to add more tests (lkp test may be ?) for riscv to
kernelci infrastructure ?

--=20
Regards,
Atish

