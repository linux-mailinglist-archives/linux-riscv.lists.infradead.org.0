Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C989818EE55
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Mar 2020 04:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RG8JaLzGTKMyhBP0BlO9r9T3SiXBNV0qtiTHs4NKU/I=; b=T+ECCV2leVyvsrZCU/FMnB+f4
	8hAZsWZc966Zj06Emd1j0Wo8k0AtJ1GR3+xw8AM7U+p/52WIoA2iI4u5OAKsHrSEDWzlel2btgYRO
	n3aL3uXD5NM/3zlV7dSuPg96GWt0vgH3E1NEuZvXzOcjlyQDZJN184dYc/IR5ySx/+lJqiOd3WrWH
	42PA9oZbnlND6aSarIPgpaCkLjeFbFvsnoXOJVk71cc4pLY73NFpujORz/qtouT7DldDovZBhcDUq
	7ZiFyGOm3e7qmPSzdJIoXEki4JFcwSQD+05qMdKSEv6FSFi+lWyr0VNfx7YEK+Lmu+dd6dKtz9Zq8
	LbOAe/CFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGDNE-0006Zi-Rz; Mon, 23 Mar 2020 03:03:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGDNC-0006ZP-6y
 for linux-riscv@lists.infradead.org; Mon, 23 Mar 2020 03:03:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id h15so2945072wrx.9
 for <linux-riscv@lists.infradead.org>; Sun, 22 Mar 2020 20:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RG8JaLzGTKMyhBP0BlO9r9T3SiXBNV0qtiTHs4NKU/I=;
 b=SvTq/87um7GXn4vBgge1JZc0gbJqbdPlvrcL4EYia/FzG5ezZ/hpp6DKWcvqlCiDE7
 MGT5z9Z60a/Jo3rCZ9eD5uk+UBFPzhcOvqkIPMKJQptN8UaNCrzqO0f7mHu/8WMqfNFd
 /LwMq2FUfbw3Xuxh2TpDpym4meEmuNszBGSmknrwd3spK1ixmlOJpx7X6DxTwJOjRV1q
 bZz4M0fDOPJ15kr4KFBY9m0M/+kBDKacr9v/qWzVoZ+Q8NXsmfDrhDbvtlWyOtyyv+AQ
 ndLbPhxTf885AXhriH2zWZ2zasMTYe1stBM59Kw5xvwRYfYkhxBCrY2k58+Ky/1sOg9O
 l5Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RG8JaLzGTKMyhBP0BlO9r9T3SiXBNV0qtiTHs4NKU/I=;
 b=iQPhnGqXLydNSO71w96BwCJO7n/sT3nAMLd4x5EmHJurXijyvJIwEz+7ZJhwknMhbg
 dniBp89ao1YboIt8VKwVC4XWmckOM82PGy0UoeAvUc2oX3h8kYz/p443VOJHWFY5u5ZF
 2nsgImJJzQAdXnh/5F4k6UQWNNJLSGFBlDKQ2VsBzHoAVDUVd2VrKQaDSsp6fef6rk+l
 qpy1Ak+f7yrNNBzsPzBanRKzjT4BoK4KmPEClaNAk7Oolx4Or5YuCMGkMJamenLSrRiz
 8Zki3NA9V7+bqzHqhHoyIJddllUP+Q9MtfEhXm0ft512CR0aE/b0qhckoybjyOJzAOld
 H4yw==
X-Gm-Message-State: ANhLgQ03ne5C+TSh38LSXUHVgdHHCerAtOqOgE0/i4GiH7h1zWzpcmPh
 dfFhtoZsi0VMqbfTNr6Q7k8jjGwpqkRUcIm4JLT9
X-Google-Smtp-Source: ADFU+vtN2d113HCoAwuCsH276Sf3lrwOu7bapSZpQpVPG1E7Z1lLXx0J8pj7PaR2D7lDwHI0R4g1Arbl6YRmYjEgUJo=
X-Received: by 2002:a5d:4003:: with SMTP id n3mr12335418wrp.176.1584932608778; 
 Sun, 22 Mar 2020 20:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200318011144.91532-1-atish.patra@wdc.com>
 <CANBLGcxB7Tf7wmkDnjsiEpmo6djwzN2DEjGqPfCt4LG6wcjLbQ@mail.gmail.com>
In-Reply-To: <CANBLGcxB7Tf7wmkDnjsiEpmo6djwzN2DEjGqPfCt4LG6wcjLbQ@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Sun, 22 Mar 2020 20:03:17 -0700
Message-ID: <CAOnJCULYLBV0O+xrgnCkv6FgFC2wz0U54uYV7S5hkBfQf+7vRg@mail.gmail.com>
Subject: Re: [PATCH v11 00/11] Add support for SBI v0.2 and CPU hotplug
To: Emil Renner Berthing <emil.renner.berthing@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_200330_255125_BCDC5123 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 10:49 AM Emil Renner Berthing
<emil.renner.berthing@gmail.com> wrote:
>
> Hi Atish,
>
> On Wed, 18 Mar 2020 at 02:12, Atish Patra <atish.patra@wdc.com> wrote:
> >
> > The Supervisor Binary Interface(SBI) specification[1] now defines a
> > base extension that provides extendability to add future extensions
> > while maintaining backward compatibility with previous versions.
> > The new version is defined as 0.2 and older version is marked as 0.1.
> >
> > This series adds following features to RISC-V Linux.
> > 1. Adds support for SBI v0.2
> > 2. A Unified calling convention implementation between 0.1 and 0.2.
> > 3. SBI Hart state management extension (HSM)
> > 4. Ordered booting of harts
> > 4. CPU hotplug
>
> If it's any help I tried this series with both OpenSBI v0.6 and master
> (9a74a64ae08),
> and in both cases Linux found all four cpus. I can test the hotplug
> stuff too if you send
> me instructions. In any case you can add my
>
> Tested-by: Emil Renner Berthing <kernel@esmil.dk>
>

Thanks for testing the patches. Here are the steps to online/offline a cpu.

To mark a cpu offline
$echo 0 > /sys/devices/system/cpu/cpuX/online

To mark a cpu online
$echo 1 > /sys/devices/system/cpu/cpuX/online

Here are the official kernel documentation.
https://www.kernel.org/doc/html/latest/core-api/cpu_hotplug.html

> /Emil
>


-- 
Regards,
Atish

