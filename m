Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56288B60B
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 16:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pf1opbquhKc07X3rPG2Ky89RAczF9tXaG6vNkGF3yo0=; b=PYI9sbEej8DQxI/NGPzQEH7ug
	yXN/xVliA5zIF/hU3ogAgb6pF+qux6S+blk2sjrVIIU+dECAN0AtNhTJDiqHWb7WjRh59Nec+qSAu
	6kZrHMp93o0ThHvPe+M9U2BSq/gXqoGl1YEDsapTKZml3NY1vmHmJ3AMi+VUtFZNMQFehzq523/6y
	z8XJtp1I6WEqU4D00DxSQCus32pOt3xOAF+oASY7FmWScVL/HlH+TACIWoo8N848aeRWHnUhrLCt6
	3J18VfC+bYekE4A3YQMvj2YmK3xYnch5aawi0V7EpoRvSBll2kkcOPZ76b5iD+gIAe+CIU9nkU1nq
	ZNwGxUfcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKknL-00062U-98; Sun, 28 Apr 2019 14:28:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKknE-0005xN-7i; Sun, 28 Apr 2019 14:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U4gvHYtR3cZMhjl2n48U193qZV7aNj8fYuONBGQ/OiY=; b=CNPJ/jm3F9PVisGwh+ab6/RR+e
 vM15L02RkhRpQjVlL/X7ImI0sKfCM5JELBDEfOGWSoGlpMNDGLyt37p/pvSNR132KIVcBYzOYipIe
 sabgSjvZWUbmiKRQevCpQ+KY8JIoIg4Bf+Ux7IQ2RHq15kcKXVAwu6mB8ynvFtN2IQJw4xQl6XA49
 8vu2ShKxYa87xy9IYjKryL7xBQG/FVTMx9ZuVOSICpQlWbyzDip6We0ilGk/qKXMXnEtE2eUayTcx
 LddbvRInDhLJCQhpj4gEYfvoTqxHnmXo9gO2+KMiLOMd8IeegMZVufh6huQCnLCC/dtom+z19A7tg
 I+o1utDA==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKknA-0007FQ-SD; Sun, 28 Apr 2019 14:28:34 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 381E61C0005;
 Sun, 28 Apr 2019 14:27:53 +0000 (UTC)
Subject: Re: [PATCH v3 04/11] arm64, mm: Move generic mmap layout functions to
 mm
To: Kees Cook <keescook@chromium.org>
References: <20190417052247.17809-1-alex@ghiti.fr>
 <20190417052247.17809-5-alex@ghiti.fr>
 <CAGXu5j+NV7nfQ044kvsqqSrWpuXH5J6aZEbvg7YpxyBFjdAHyw@mail.gmail.com>
 <fd2b02b3-5872-ccf6-9f52-53f692fba02d@ghiti.fr>
 <CAGXu5j+NkQ+nwRShuKeHMwuy6++3x0QMS9djE=wUzUUtAkVf3g@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <cf4073ed-098f-779e-32e1-f3273622b115@ghiti.fr>
Date: Sun, 28 Apr 2019 10:27:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+NkQ+nwRShuKeHMwuy6++3x0QMS9djE=wUzUUtAkVf3g@mail.gmail.com>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_152832_949871_773E4A6D 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Paul Burton <paul.burton@mips.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/18/19 10:19 AM, Kees Cook wrote:
> On Thu, Apr 18, 2019 at 12:55 AM Alex Ghiti <alex@ghiti.fr> wrote:
>> Regarding the help text, I agree that it does not seem to be frequent to
>> place
>> comment above config like that, I'll let Christoph and you decide what's
>> best. And I'll
>> add the possibility for the arch to define its own STACK_RND_MASK.
> Yeah, I think it's very helpful to spell out the requirements for new
> architectures with these kinds of features in the help text (see
> SECCOMP_FILTER for example).
>
>>> I think CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT should select
>>> CONFIG_ARCH_HAS_ELF_RANDOMIZE. It would mean moving
>>
>> I don't think we should link those 2 features together: an architecture
>> may want
>> topdown mmap and don't care about randomization right ?
> Given that the mmap randomization and stack randomization are already
> coming along for the ride, it seems weird to make brk randomization an
> optional feature (especially since all the of the architectures you're
> converting include it). I'd also like these kinds of security features
> to be available by default. So, I think one patch to adjust the MIPS
> brk randomization entropy and then you can just include it in this
> move.
>
>> Actually, I had to add those ifdefs for mmap_rnd_compat_bits, not
>> is_compat_task.
> Oh! In that case, use CONFIG_HAVE_ARCH_MMAP_RND_BITS. :) Actually,
> what would be maybe cleaner would be to add mmap_rnd_bits_min/max
> consts set to 0 for the non-CONFIG_HAVE_ARCH_MMAP_RND_BITS case at the
> top of mm/mmap.c.
>
> I really like this clean-up! I think we can move x86 to it too without
> too much pain. :)
>
Hi,

Just a short note to indicate that while working on v4, I realized this =

series had a some issues:

- I broke the case ARCH_HAS_ELF_RANDOMIZE selected but not
 =A0 ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT (which can happen on arm =

without MMU for example)
- I use mmap_rnd_bits unconditionnally whereas it might not be defined =

(it works for all arches I moved though)

The only clean solution I found for the first problem is to propose a =

common implementation for arch_randomize_brk
and arch_mmap_rnd, which is another series on its own and another good =

cleanup since every architecture uses
the same functions (except ppc, but that can be workarounded easily).
Just like moving x86 deserves its own series since it adds up 8/9 commits.
I am on vacations for 2 weeks, so I won't have time to submit another =

patchset before, sorry about that.

Thanks,

Alex


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
