Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6774A1FFE75
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 01:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ebRgXaVAutOkdSMC0ajKJo9dEgloVQG2A17kRILSwHs=; b=GJFIlllQMTHOSY
	OootVl4ay39W1jSg52KE6U70zLaJSoE7PhLxCUJd+eYN9ovnPbHhnVGhpzubrbTb1tj0biEFLH6aG
	riPtpXSTLMF3vZzy8FhZoCeANE7orBAZFcfhKPfVBnge/0JGzVVfPQAMYDdymKi1HyOrs8pE7PYSn
	JRM5keeuhKcigN5a9FJuCd0ZyIcYdbuOe3RBQFwR6pSHiva5k1boTDZqy3NVuN9D0z/vi8Akb6b9J
	EdsBaHGKMy44jc9ldvptEsMsiy5gS/y8c0NUZ9Bct32nKVBUevX1pE7kzui6eE0gICyTGlb6CqI7w
	mpHNbK04J7ffy2Av1OeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm3bw-0002xH-Qp; Thu, 18 Jun 2020 23:06:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm3bs-0002wm-5R
 for linux-riscv@lists.infradead.org; Thu, 18 Jun 2020 23:06:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id s10so3654432pgm.0
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 16:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ebRgXaVAutOkdSMC0ajKJo9dEgloVQG2A17kRILSwHs=;
 b=pyUgmkPk5XQ/WzaWKS3tIprcwZhRc/EVM9mcFm2hLgLPSDxmYxMtyKW9tfadg5Zxi0
 92UbI0eSzbklkO7CxcEjKIWM9Ev/fV9EFtewRJylLmvwOHXWo/NfCb/9AAhMkKNEMu7D
 wuFWbkzoKCelnHWlmF5NEbcNoJx37841yAS6eYXLgvNGTnbPx0hRAR9d0ZoCFT15oLNh
 9T5HOhgSpso9c/Tr+wTNsn+H/5aPbdFBxjkbHDkN4Px1HnRRq/egZa4kmNInTodFwOdn
 RicCl8e63iRGTEnWf7w9xyEavlk/+i9S8Phbr5dWpCG8jdDexBmEWQb9GBUPO8WEeIhw
 Ouvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ebRgXaVAutOkdSMC0ajKJo9dEgloVQG2A17kRILSwHs=;
 b=PpM3gWHp5Ru5/pCKBkvi8SC4y78LsJclmyFPv5eZ/uW3l6wqd8py+h1Gm1iW5Tq275
 ZpmCcACY/Hm1HRInvMPSVFXSkLAgPsWUhzAGnGpkyA7sGlGmcWzp/ks5H05G91SpZCYF
 0wzqO4+tu+Us4sBrXtxL1V3UlAhsxUdC51hFDknZ7bYUGiU80mPEr+mKozB2MfqzklEg
 xmBqXcuPlTS8wwPCDieUHg+Pkhu3arJnQa1666dqqWnBVKOnrOtxGaCtn1UMnTFz3Cxm
 TDsPO16yRL1fnYTU/Bi5TFJ7HURadQNhcVNx/k/t2ANl6+mWKK8w1shM2ko+YAoaWGk1
 XscA==
X-Gm-Message-State: AOAM533mi+YOPaLt62pq0MLgYwEwbHogMCygFpVXzxevpdC+/MV7j322
 gS5FkHh4WbSxDoUErhoArPjdLA==
X-Google-Smtp-Source: ABdhPJyQODwVaLyD20ZtzxUaWPaMgFqgEVhHxM5Us6JywjgN+85cZojtNLYnQUrCjQ8BBKiASSe0NA==
X-Received: by 2002:a63:3fc2:: with SMTP id m185mr719022pga.426.1592521575007; 
 Thu, 18 Jun 2020 16:06:15 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id p31sm3374839pgb.46.2020.06.18.16.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 16:06:14 -0700 (PDT)
Date: Thu, 18 Jun 2020 16:06:14 -0700 (PDT)
X-Google-Original-Date: Thu, 18 Jun 2020 16:06:09 PDT (-0700)
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
In-Reply-To: <a276c6dfa03682d518543329bb36bc0e@mailhost.ics.forth.gr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: mick@ics.forth.gr
Message-ID: <mhng-524c37c9-25b7-405f-933f-2029820dbe40@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_160616_206160_47547C85 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org,
 Atish Patra <Atish.Patra@wdc.com>, yibin_liu@c-sky.com,
 Paul Walmsley <paul.walmsley@sifive.com>, mick@ics.forth.gr,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 13 Jun 2020 00:24:01 PDT (-0700), mick@ics.forth.gr wrote:
> Στις 2020-06-11 22:39, Palmer Dabbelt έγραψε:
>> On Thu, 11 Jun 2020 12:09:08 PDT (-0700), mick@ics.forth.gr wrote:
>>> Στις 2020-05-21 21:42, Nick Kossifidis έγραψε:
>>>> Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
>>>>> This patch series adds kexec/kdump and crash kernel
>>>>> support on RISC-V. For testing the patches a patched
>>>>> version of kexec-tools is needed. The patch is still
>>>>> a work in progress but a draft version can be found at:
>>>>>
>>>>> http://riscv.ics.forth.gr/kexec-tools.patch
>>>>>
>>>>
>>>> Any comments / feedback on this ? Should we get it in ?
>>>>
>>>> Regards,
>>>> Nick
>>>
>>> Anyone ?
>>
>> Sorry, I dropped the ball on this one.  After the CPU hotplug breakage
>> I
>> decided I need to get a pre-merge test for all these new features, and
>> I
>> haven't gotten around to actually doing so yet.  The merge window is
>> closing
>> right now, so with any luck I'll have some time to get around to my
>> patch
>> backlog -- first I need to go spin up some better testing, though.
>
> Anything I can do to help ? I have a bunch of hw available (unleashed,
> genesys2 and nexys 2 ddr for Ariane / LowRISC SoC) and I'll probably
> also need to have a CI flow for the stuff I do internally.

Well, getting CI up and running would be great -- specifically, running stress
tests on real hardware is something we're missing.

