Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D4E163D80
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 08:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b1kXoez8kqveUNmv9BKElRMXEDsw4WWFUQ32xPFMPNQ=; b=ksC5lcK9QuOadDa55JVaxffMa
	/kPpFaARarGZWcXBWXQK/m06EUVbh93RXm6mh6TgIXKc5e/ZdoDK/wBHzOmJf1Qe1/7LzGW0LqDA4
	TUhk81Q1Rl8K1Y5sjnI+uOZ1gbcdFD1jpW2KlLdDDOYBOlp869feuQx0Nycs87KUUa/0SER7tSI5u
	oSnv8i4QUNG/V39hYDZhCiFmiEC284PCjGkkUrsZTsvPQimRpkjipdXL8j+F0e7na9vcVhDC79/xC
	+F8FGk73qpwwAbIdm4SYIhtE92DOOkA6MnqfaV6ARf6y5x0T6OWPlBpXrl4rjDGLgj+FtWrT72mS+
	dC/CbzP5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jop-0006qy-5d; Wed, 19 Feb 2020 07:30:51 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jol-0006qT-8Q
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 07:30:48 +0000
Received: by mail-qk1-x744.google.com with SMTP id v2so22183954qkj.2
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 23:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b1kXoez8kqveUNmv9BKElRMXEDsw4WWFUQ32xPFMPNQ=;
 b=kBmX0xFjBmS8VXUZ5JGumIy10Vo5NR+nHPLeViYsjrGdKBDseN5U+pLZ/eI3Pho3zX
 yLZDTG6dvkz+QZIKwrrUs48hQyDUyMQ4wdBrsn40b8fecY1SHu5vRGd/SXAq7naO4LGu
 LnyMIXxMI+YxyMCDmQ4j7sw9vQCZobYS0RJpvPxTySJdrahVpnwk/+TOAg+WnKXJ8sJB
 nFGK5v8Zgb+1DyIJTvs8Gyn0RNm5eU0KPgCJ7EHAnYz24DLyXfDdsqN03fZi4pPWLkH9
 w49YEqjOiKcZ7prTOCaUGxLdE4XGjy7HaQqRwzBqVko2bf84fpcxvL4hdo0yzEgNZxuF
 bzhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b1kXoez8kqveUNmv9BKElRMXEDsw4WWFUQ32xPFMPNQ=;
 b=XuXRMdjs+JIbO6KZXhOrGIZ9ACein+DikMsl/ZiVNU/t4K2+biiV405oKazge0s0E2
 O3fwIZl2tuZKboviarukv+ry431LZqESqN2VkPUPYmzwpGH4wkjQiJ3qJOforsWtrEMI
 XYnQ9rTYe3bXUziryGOWGGF2xWhysXFaqELaIzjciCRmAgd4DKXJi7AKbqv8QfJ7CKBe
 IOoNFoRNHIiUT5hKP7GYMc5fa0iSMkFXDiZPcn8nBevL6VcLy4+/uL3ZWanfG/Vzc8o7
 Swfd5qY8uruy8/bzjHKQNCo7kL2STMqHssHGBkTDAXAIXAecTIndzXmdJJ6BDc+D/U2z
 K8OA==
X-Gm-Message-State: APjAAAUlDtVk5TLDMd5zbkSdBiPhMcoqPa62ewZSuqiyHznz4WquoPrw
 eMlX8LMLBxtMl44saRRmprJN5BmdI7INtOpx5NtXRQ==
X-Google-Smtp-Source: APXvYqxpehlijMXAzcXkwNC1uSWRO4BZXY4/6dcGGpPayh19hDoOzDmiqDy0/na/Esm7e7rm2jm7jOSeut5OumKLD4s=
X-Received: by 2002:a37:a143:: with SMTP id k64mr22168808qke.397.1582097445923; 
 Tue, 18 Feb 2020 23:30:45 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
 <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
 <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
 <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
 <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
 <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
 <a55f265e-71b2-5ebb-b079-6345007a442e@ghiti.fr>
 <CABvJ_xjVLJEebCac_sb6-Yd_iHU1x8Daqw-iFqcGn11YKktm8Q@mail.gmail.com>
 <MN2PR04MB6061ED6ABC668B59A7A544CF8D020@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CABvJ_xg_+XHhND-_8mq8gUN_yN-abMjDOWGg+MFVP0gwSAhxtw@mail.gmail.com>
 <CABvJ_xgRE3P0uVhx9zyVZOzMjNYewJQK-nyhv8e5cfpNweLAGw@mail.gmail.com>
 <CABvJ_xiqAmdqUjZ9s8w9E3BYU8ruFnACpiGZMH-Vc8nCKiwUcA@mail.gmail.com>
 <2b69bae3-b00f-a991-16f6-8f682faeddfe@ghiti.fr>
 <CABvJ_xjm9wBqTm2mbbUXcEAT88cr=86AKitQbXdfPJ9WYP702w@mail.gmail.com>
 <4df14ac8-adb6-08d9-0d1b-04553c2241f3@ghiti.fr>
In-Reply-To: <4df14ac8-adb6-08d9-0d1b-04553c2241f3@ghiti.fr>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 19 Feb 2020 15:30:34 +0800
Message-ID: <CABvJ_xhBixgFhBqc9Xp8D9XpfJFkWqasOaytpGzLYZ3_JL2jvQ@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233047_302439_71EC6B18 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul@pwsan.com>, Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 2:46 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Vincent,
>
> On 2/10/20 4:53 AM, Vincent Chen wrote:
> > On Mon, Feb 10, 2020 at 2:37 PM Alex Ghiti <alex@ghiti.fr> wrote:
> >>
> >> Hi Vincent,
> >>
> >> On 2/7/20 9:51 AM, Vincent Chen wrote:
> >>> On Fri, Feb 7, 2020 at 10:39 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> >>>>
> >>>>>> For point1, we don't need a dedicated region as long as we are allocating
> >>>>>> modules from VMALLOC area. Let's avoid another virtual memory region if
> >>>>>> possible.
> >>>>>>
> >>>>>
> >>>>> Your comments inspire me if we can know the end of the percpu data
> >>>>> region, we can dynamically calculate the start address in each module
> >>>>> allocation by "<end of the percpu data region> - 2GB" if needed. I am
> >>>>> finding a way to derive the <end of the percpu data region>.
> >>>>>
> >>>>
> >>>> In the implementation of the idea, I found that I did have some
> >>>> misunderstandings about the mechanism of accessing static percpu
> >>>> symbol. Currently, I think this issue can be solved by modifying the
> >>>> module_allocate() to the following.
> >>>> #define MODULE_START max(PFN_ALIGN(&_end - 2 *
> >>>> SZ_1G), PFN_ALIGN(&_text + 8 * SZ_1K - 2 * SZ_1G))
> >>>> void *module_alloc(unsigned long size)
> >>>> {
> >>>> return __vmalloc_node_range(size, 1, MODULE_START,
> >>>> VMALLOC_END, GFP_KERNEL,
> >>>> PAGE_KERNEL_EXEC, 0,
> >>>> NUMA_NO_NODE,
> >>>> __builtin_return_address(0));
> >>>> }
> >>>> After applying a similar modification above, the kernel can
> >>>> successfully insert the test module provided by Romain. Any feedback
> >>>> is welcome. If someone is curious about the reason, I roughly
> >>>> described it at the end of this mail. I am sorry if someone was misled
> >>>> by early discussion.
> >>>>
> >>>>
> >>>> As mentioned early, kernel pre-allocates a memory region for each CPU
> >>>> to place the instances of the percpu data. According to the
> >>>> declaration type, each memory region can be divided into three chunks.
> >>>> These three chunks from low memory to high memory are static chunk,
> >>>> reserved chunk, and dynamic chunk.
> >>>> a. The static chunk is used for the static percpu symbols declared in the kernel
> >>>> b. The reserved chunk is used for the static percpu symbols declared
> >>>> in the kernel module
> >>>> c. The dynamic chunk is used for all dynamic percpu symbols.
> >>>>
> >>>> The order of the percpu symbols in each memory region is the same and
> >>>> is recorded in a symbol list maintained by the kernel. Therefore, the
> >>>> address of a specific CPU's percpu symbol is "The address of this
> >>>> percpu symbol in the symbol list" + "The offset from symbols list to
> >>>> the specific CPU region".
> >>>> a. The symbol list is created based on the ".data..percpu" section. In
> >>>> other words, the start address of this symbol list is the start
> >>>> address of ".data..percpu". When a dynamic percpu symbol is created or
> >>>> a kernel module import a static percpu symbol, the kernel will follow
> >>>> the above chunk rule to add this percpu symbol to its suitable region.
> >>>> b. When each memory area was created, "The offset from symbols list to
> >>>> the specific CPU region" has been recorded.
> >>>>
> >>>> Back to the issue, according to the rules above, the kernel will
> >>>> relocate the ".data..percpu" section of the loaded module to the end
> >>>> of the ".data..percpu" section of the kernel image. The end of the
> >>>> ".data..percpu" section of the kernel image almost equals _text, and
> >>>> the current size of the reserved chunk is 8KB. Therefore, the
> >>>> appropriate range to place the loaded module is [max(PFN_ALIGN(&_end -
> >>>> 2 *SZ_1G), PFN_ALIGN(&_text + 8 * SZ_1K - 2 * SZ_1G)),  VMALLOC_END].
> >>>
> >>> I did not notice that the size of the kernel .text section is
> >>> impossible below 2 PAGES. Therefore, the modification of module_alloc
> >>> function can be reduced to the following.
> >>> void *module_alloc(unsigned long size)
> >>>    {
> >>>    return __vmalloc_node_range(size, 1, PFN_ALIGN(&_end - 2 *SZ_1G),
> >>>    VMALLOC_END, GFP_KERNEL,
> >>>    PAGE_KERNEL_EXEC, 0,
> >>>    NUMA_NO_NODE,
> >>>    __builtin_return_address(0));
> >>>    }
> >>> It is the same as Alex's suggestion. Is Alex willing to send this
> >>> patch to resolve this bug?
> >>>
> >>
> >> You did all the work, please send a patch explaining what you learnt and
> >> feel free to add a Suggested-By. Anyway, I'll add a Reviewed-by when you
> >> propose something.
> >>
> >> Thank you Vincent for all your research,
> >>
> >> Alex
> >
> > OK, I understood. Thank you and Anup for giving me some suggestions
> > from different viewpoints. I will add Suggested-By for you all if
> > possible :)
> >
> > Vincent
> >
>
> Are you going to propose something soon regarding this issue ? I
> strongly believe we need to fix modules loading for 5.6.
>
> Thanks,
>
> Alex

Thanks for your reminder. I just posted the patch to the mailing list.

Vincent

