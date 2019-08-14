Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9787E8DFCB
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 23:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=APiLJDb+2tSMbba6f47qHOFrvn7qxnQC/WdRK76u1LM=; b=sSjrbtv0TqgRWYehCrEZnj4+l
	O8Ikwp4EqcLRvQhGc9UCBqMEKH4G+XFS3xJDjAyyOqYXPvJ+toSiQI5FCf0Mj9abFqy5Yd/w+ixk0
	/LlWRYoa3eRYokx27S1H5c7KWgx+0/C4Jclp59soXU7k+vzW4DYimsHGsUpmeMQ6+j+1RpUm91KBM
	qEzaKc9COfcOnro0JiS9UGtoOeW1JQQkPXjpXliLN1XxATxoGGDE40aMavs6E1g2I7fm+/Fii1vpj
	J/8HK6W+USw2twxqaPgM06B2D2LgeghR15kjXUir95efqfFd1AXMVYxn54jB/i2UfwfGsySdOsMmn
	sQtXlmAbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy0po-0000M6-JI; Wed, 14 Aug 2019 21:29:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy0pk-0000L4-6Z
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 21:29:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so171933plp.9
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 14:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Q0GTf4SXd8ap/7eYvtbqWOyb5FQdhVMHgC+xfCGpXSQ=;
 b=kea+s0+EM0lH1QLqsZDsOn4sDOH41D3HRfCTW2cUvdWSICMhItatHtT/A6rHXo016S
 dCgfKALNbA888bZcw0h4uCtKVYxn8NHdwVsxi7iy8+79qiZQP3Q8ch5WvlR/i6L2rNZY
 sw8fYzM2F4Oby5/oXCn61+X+DqFP6g+PZ8jeCiPzmHzVxyK37+YvHxzJGSbVFpIILVJu
 ziqN7bbph16MtF6C+mDT0f5G8DI5VnpxilEiIvBPBFEPF+HJRQDwsg4JXnCcrcWRobhm
 SrxmxBgxMeoP6hfXkBI5tZ/YE+6BXtUTa3ZE8i4LjkqIDfqjv4/L8yLaLE66kGJtU1ez
 JrJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Q0GTf4SXd8ap/7eYvtbqWOyb5FQdhVMHgC+xfCGpXSQ=;
 b=YEQgpLK/Ai0GUc3DahcExfDdtWFJPWmG4NS8X+8avRiD38Iw+yFAf+aLHh06pdU1kX
 /WFpqhO5oL7oyIv1uxkjebhI1/tjx1nCvzGjMit8aMNsWJrB7HACy7IylJLRLrQinInc
 Qw6/PHP/vlR5416dP75EXAF+0rEyRROpoOgSSqpqXMFjTgpfkp80dRaStOb68EobPIzk
 ZrNyOqPFZI8ozJ5/v0dmjxkiJokyiX7Q9uebGbq8tXggRQ1JS+cxEDg40Tae2msQFR1s
 oHuiD2Y+4FfLKwgERjCNVW4YprDYVhTXAEbx2csuLhdQLsrUykPuhAJbUTU63OhQHktd
 TUXA==
X-Gm-Message-State: APjAAAUavTfTWcBjjw12EepkTTpiuPD8aSAXQv74dvpY1sbYYYdJoCLR
 tTLaWGDe+q4mNfLJ1N8BJ84RjA==
X-Google-Smtp-Source: APXvYqxeC6mQSHmSjfMvx2i1IeIw2IejFV3LJk1NJqcnb3GlKQMqyAZrrRNMCWBC5CwMBN6KMTvnQQ==
X-Received: by 2002:a17:902:9a8d:: with SMTP id
 w13mr1279338plp.157.1565818165383; 
 Wed, 14 Aug 2019 14:29:25 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id k5sm709566pjl.32.2019.08.14.14.29.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 14:29:24 -0700 (PDT)
Date: Wed, 14 Aug 2019 14:29:24 -0700 (PDT)
X-Google-Original-Date: Wed, 14 Aug 2019 14:15:32 PDT (-0700)
Subject: Re: [PATCH v2 2/2] riscv: Make __fstate_clean() work correctly.
In-Reply-To: <alpine.DEB.2.21.9999.1908141328440.18249@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-4eded486-d381-4822-abc5-4023bf7ba591@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_142928_297928_0440D014 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 13:32:50 PDT (-0700), Paul Walmsley wrote:
> On Wed, 14 Aug 2019, Vincent Chen wrote:
>
>> Make the __fstate_clean() function correctly set the
>> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
>>
>> Fixes: 7db91e5 ("RISC-V: Task implementation")
>> Cc: linux-stable <stable@vger.kernel.org>
>> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>> Reviewed-by: Anup Patel <anup@brainfault.org>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>
> Thanks, I extended the "Fixes" commit ID to 12 digits, as is the usual
> practice here, and have queued the following for v5.3-rc.

For reference, something like "git config core.abbrev=12" (or whatever you 
write to get this in your .gitconfig)

    https://github.com/palmer-dabbelt/home/blob/master/.gitconfig.in#L23

causes git to do the right thing.

> - Paul
>
> From: Vincent Chen <vincent.chen@sifive.com>
> Date: Wed, 14 Aug 2019 16:23:53 +0800
> Subject: [PATCH] riscv: Make __fstate_clean() work correctly.
>
> Make the __fstate_clean() function correctly set the
> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
>
> Fixes: 7db91e57a0acd ("RISC-V: Task implementation")
> Cc: linux-stable <stable@vger.kernel.org>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> [paul.walmsley@sifive.com: expanded "Fixes" commit ID]
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/include/asm/switch_to.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index 949d9cd91dec..f0227bdce0f0 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -16,7 +16,7 @@ extern void __fstate_restore(struct task_struct *restore_from);
>
>  static inline void __fstate_clean(struct pt_regs *regs)
>  {
> -	regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
> +	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_CLEAN;
>  }
>
>  static inline void fstate_off(struct task_struct *task,

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
