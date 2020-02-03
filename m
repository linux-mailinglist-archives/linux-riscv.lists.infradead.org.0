Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2141A1503CF
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Feb 2020 11:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7f1WXx6cD5IK73agIm3M8O8GSfWBZtKEiuMR4Z8fWds=; b=lqDpRpWivXzhWzFjiOOL828xv
	K5aphmVUZg0HgT2ro2UgSMUlV0CNGx1sF2XfPg/Rg0lgJKlBWLCrxAZpbUg1x6UW9K9pvVkTNmXbp
	kSvkfAuySfjwpu/br3NUkdiszxYEgT+Ga3AdvVpbU8KqIUIpueELIu1kRI8j0QpHoImh+CBPHjV9M
	wRO8NsV/u55keyslIMVZ7xXWEXs7YafcH7pE1ZabdUEKqFmilZdqeCvVaJY1qAh+wp0aVL0BKsUzL
	9oj7SeN5a7awoz/c7QphcHFONa8cIrTWxb0hv3UBXShxCsrYH+1GrM5e3eI2DnGd+9kMri3qFbrZy
	eImmo+GZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYai-0000ak-3R; Mon, 03 Feb 2020 10:04:28 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYae-0000aI-9J
 for linux-riscv@lists.infradead.org; Mon, 03 Feb 2020 10:04:25 +0000
Received: by mail-qk1-x741.google.com with SMTP id h4so2719828qkm.0
 for <linux-riscv@lists.infradead.org>; Mon, 03 Feb 2020 02:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7f1WXx6cD5IK73agIm3M8O8GSfWBZtKEiuMR4Z8fWds=;
 b=BcV4zkLS5/mOk6N9G5z+3MQxHdUqiuzEMpCSLcoJDTJipeAVkf4cEUsxmPoYnhEBvG
 T9yAlehFqt4ZbB9xdRBRCjzB34GDFOUCh8zwSc7wFCSLhCMPjxb+VUydQtD2KvZTkcyt
 IkMWQ7RAZlQm1Xxy2G7gduSB/PbUVwIu0bZp9NM9YRbiW9NagsZBx1mmpUD68INurtXI
 xO/Zqqb4OnKmYgaM/oLEB0HSiQc4f0kmtBzqTbGvTgOJhEGP71zf+usQ9pq84tK8LipA
 37d4qUliTZxnmjVLdFrGGn87g0I9QtEuZrNhnIPEghZGX2H4Pb6I3uZ8Raq73pggoSKi
 lbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7f1WXx6cD5IK73agIm3M8O8GSfWBZtKEiuMR4Z8fWds=;
 b=D5kuI58IqThhgaGE2UyRb+V5G0BWnbYjHXVAz/U3tsQ6cMvmmGKLpfQUYtzJbQKczD
 mDzHKgl+0O+6g2HECRlAx+gyurUXmuFKH/WD4s8cE+R+2PuhYDinpOWdRJKsq35Q3QQP
 Z8Yf+xKurt3J3rCaJevk6+yOKhElIvnRcMXFrPX5ZVz9lz8KVbxUg9Slx7xCjm7S1Wnx
 0rIYjvo4eoZJCUo9oddgou00Wqm+BWUR5bMcMORgNoRGLDY5eldI4L6+Lv2qpy8hValt
 LuOtGKBQB057dYkRXPGIdvO05nRCu3IRbZsWDo8FKV17Gfn8xd7LysgZJ6Z7YWAXEdIm
 GhyQ==
X-Gm-Message-State: APjAAAXNUQvIvU0Lebhsf9R39l3H/CPQL6PFHm9Zo+sEOV37ZfpVsoBO
 31kVJwP9/J3XZzyVPmpHZLzMHlU1ENR4UMXVR7AYzPGKA7Y=
X-Google-Smtp-Source: APXvYqyWA44FZ4Smwej8uN1g4GfG3t8ewJhyMQq+HbZxLu8vxcgV7u0FNny9X8uS4FYiXjiLqLA+xysbj9SR4JHGd+g=
X-Received: by 2002:ae9:f714:: with SMTP id s20mr22513156qkg.236.1580724262588; 
 Mon, 03 Feb 2020 02:04:22 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
In-Reply-To: <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 3 Feb 2020 18:04:11 +0800
Message-ID: <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_020424_388115_78CE9247 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Alex Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul@pwsan.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
<romain.dolbeau@european-processor-initiative.eu> wrote:
>
> On 2020-02-01 14:59, Alex Ghiti wrote:
> > Why restrict to 128M whereas we have 2GB offset available to the end of
> > the kernel ?
>
> Isn't that 2 GiB offset to whatever the module requires in the kernel,
> rather than to the end of the kernel space?
>
> Is there some guarantee that symbols accessible by modules are at the
> end of the kernel? If so, wouldn't the maximum offset for this patch
> still be (2 GiB - <total size of accessible symbols>)?
>
> Cordially,
>
> --
> Romain Dolbeau

It took me some time to find the root cause of this problem, please
allow me to share some observations before the discussion.
The root cause of this issue is that the percpu data is declared as a
static variable. The "static" attribute will make the compiler think
that this symbol is close to the .text section at runtime. Hence, the
compiler uses "auipc" to access this percpu data instead of using GOT.
In this case,  the access range is limited to + -2G. However, in
practice, these percpu data are placed at a pre-allocated region
created by the memblock_allocate() function. In other words, the
distance between the pre-allocated region (>PAGE_OFFSET ) and the
.text section of the kernel module (in VMALLOC region) is much larger
than 2G.
I agree that the original patch,
https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589,
can solve most cases. However, I do not think the patch still works if
the kernel module region is determined by _end or <total size of
accessible symbols>. The reason is that the pre-allocated region for
module percpu data comes from the memblock function at runtime. Hence,
we cannot know the actual address of this region at compile-time, and
this issue probably may occur again in this case.

By the way, I think maybe we can refer to the implementation of MIPS.
1. For general cases, we can use this patch to solve this issue.
2. For a large kernel image (>2G) or enabling the KASLR feature, we
may need a new code mode to deal with this issue.

