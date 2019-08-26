Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8959D7FE
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 23:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=moFh9fpzRnO058kzveFLYHR2PMlAvb7aXUDf94kyMAg=; b=DEAF1nFOlVeqVEm8SauBhi6yF
	TNlgvZpwCPHHj5/kzz4Nwhnw7IBiA0OC1eIkBF0ahhQZF+8lSHzw1s3tZSwunIsiVNOFDmRXNqF3M
	vW/iouP1xaqPeISenYPLvDp2fHZtx/9w/EnlqlrezHvwS8+S0YbPLu+nfiWVUf+R9SbQhkBSsuemg
	CyOl8po5m3UDZfh8vzzcyRQ9vfI461J6b6v0czhsAX8wYjAaaUr3tEPeNz0I7FooDuh85mgFTkvPr
	vzDf8Rda1sPNqdMbof6VMbf8wl/BZCi/2JU9NwO3FF4dx+G+qdcaHVjoVlzoMC2MUFlHWGWYrbRIU
	n9nNZDUew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2MN6-0008Gw-1C; Mon, 26 Aug 2019 21:17:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2MMz-0008Fr-9k
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 21:17:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id m3so11313554pgv.13
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 14:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=4iHMLHThNJBGjTESO+UXuVCPR4zQ2/5AcoKCoGrbBlQ=;
 b=W5Be1yQ3bDSisWGF6V4Q9m+ydc849sRP0naZI4+CYyzgn4o3VQnpOx3Nz4lDPmCgb9
 H9DZHtmekFPPfLQDdKNYT+tFQHK1UGzMydODz/gQUzedYRB+/n7aw5Er8mkzEG02w9FJ
 gNM594n8bZMI744xF/MrnFagyk0yg3J501l8upZ8smL5ZCT7nQWuxGR8OaK2ey9QfMfL
 ztVjwtUq8XPta3pz2KS2xBCtwCCGD8pfAWFrfa2OCMFQd3ghu6k0VRLnlXYZkBZJ7yK6
 LZkliejccx4b6agYqpa+wBaUSe7jmwEYytyF3ZHCANseop1sK8hqxxQb2OYrY8Tnac+I
 CdcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=4iHMLHThNJBGjTESO+UXuVCPR4zQ2/5AcoKCoGrbBlQ=;
 b=WXb0E/pr2zw0q0DUgw3HQRxzVcG/o+xsTPXS9hD/etUdd+aKxe2PC6qPREJVA6kOWJ
 ikHbdqMhHdhGV34EiY0rsM4ImGYlICQT8PChi7BOQGYgr9qHiaL3PfhrEtg0wg3Wic2W
 M895JaPPw7SWI2T1NnEgz3+//CAJtQvBW8F9sF6WHX4M9Xmgcb3C7uQjau3Dur1WInsp
 JLqaPIPRLS44VwRUTTlGuCSkj86Pv5D0cr4lQGvuqrewPwgeEAtNzg1ESpsigTNvH1tl
 wOB//WSWD3q1N0/vU5yIqT6EHLfcTz9hUScfN3ln3oWPt/FegcV6M6lvDzGRfB3qqnTo
 ragA==
X-Gm-Message-State: APjAAAWURAUwVdHFWeuF34EqVodTsp18Hc8XuTOELI/5OYPi3EPegRiU
 n1aIXlPP97i0kSMj5iXX1lzjKg==
X-Google-Smtp-Source: APXvYqxqVbAI/HR7BzF5tThL2lMrXkfE6uTqMaGDuM1Yy2DRHc6du5lFLc6qBNAGV07fW7NtzXWf7A==
X-Received: by 2002:a63:6206:: with SMTP id w6mr18127988pgb.428.1566854262237; 
 Mon, 26 Aug 2019 14:17:42 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id m13sm12988366pgn.57.2019.08.26.14.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 14:17:41 -0700 (PDT)
Date: Mon, 26 Aug 2019 14:17:41 -0700 (PDT)
X-Google-Original-Date: Mon, 26 Aug 2019 14:17:38 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Fix FIXMAP area corruption on RV32 systems
In-Reply-To: <CAAhSdy1arxoekV4p3so=2PtTtBCvT61sz+uDbaZ=e11p7b5DXg@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: anup@brainfault.org
Message-ID: <mhng-7a475a74-60cb-4e3f-bcae-6cd6299bb173@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_141745_370468_FCB76453 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 18 Aug 2019 21:49:01 PDT (-0700), anup@brainfault.org wrote:
> On Sun, Aug 18, 2019 at 11:49 PM Christoph Hellwig <hch@infradead.org> wrote:
>>
>> > +#define FIXADDR_TOP      (VMALLOC_START)
>>
>> Nit: no need for the braces, the definitions below don't use it
>> either.
>
> Sure, I will update and send v2 soon.
>
>>
>> > +#ifdef CONFIG_64BIT
>> > +#define FIXADDR_SIZE     PMD_SIZE
>> > +#else
>> > +#define FIXADDR_SIZE     PGDIR_SIZE
>> > +#endif
>> > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
>> > +
>> >  /*
>> > - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
>> > + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>> >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
>> >   */
>> >  #ifdef CONFIG_64BIT
>> >  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
>> >  #else
>> > -#define TASK_SIZE VMALLOC_START
>> > +#define TASK_SIZE FIXADDR_START
>> >  #endif
>>
>> Mentioning the addresses is a little weird.  IMHO this would be
>> a much nicer place to explain the high-level memory layout, including
>> maybe a little ASCII art.  Also we could have one #ifdef CONFIG_64BIT
>> for both related values.  Last but not least instead of saying that
>> something should be dividable it would be nice to have a BUILD_BUG_ON
>> to enforce it.
>>
>> Either way we are late in the cycle, so I guess this is ok for now:
>>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>
>> But I'd love to see this area improved a little further as it is full
>> of mine fields.
>
> I agree with you. We also have Sparsemem and KASAN patches which
> touch virtual memory layout so it's important to have virtual memory layout
> documented clearly. I can add the required documentation as separate patch.

Documentation is great, but if we document something that is broken then it's 
still broken :)

I think this needs to just be redone -- we keep running into issues here and 
fixing them, but there are probably more issues and it'll probably be faster to 
just think through the memory map than to keep fixing bugs as they crop up.  
This was one of the areas of the port I didn't rewrite as part of the upstream 
submission process, and as a result it's pretty crusty.

> I think the best place to add ASCII art would be asm/pgtable.h where all
> virtual memory related defines are placed. Suggestions??

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
