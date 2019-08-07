Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D983E1A
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 02:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwXPTjER7F+MMtTFDYQ8SvWh4TKto/2gQMt9Nh2fDNE=; b=HCKx/pgrzcOnKA
	TEyLsDKT4yRlm5ERvC0h9wgHb8zBmkGLHg4b1KBmI+itFWUf7GaoHvp7LaADf15pGpZc5IFl5Iu51
	GuB4uhZNV2suuCsa3j45mkuuQ9lDkpJDJUJHtwvHuEsj+wldF8lgBqVeC5MENFObTpqaVPTJxeF3m
	qe64ttsaRJ3Jhj51aPMQ4P4xZHyBIeaxNhIy+UL5d2oocoh25Wdz30Ewj59vl9VLZ3ymAjLbcjZmL
	hMMA1dcCikm/KVaWHHjJUUaNpS+8ie6P2PyubQgRpBNSm8bLp/gqv1HdQV23fl2ex/oNtfLLMJy+U
	g2NuKe0AteYaS5s38xAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9Rg-00054d-6a; Wed, 07 Aug 2019 00:04:48 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9Rc-00054G-Bx
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 00:04:45 +0000
Received: by mail-ot1-x341.google.com with SMTP id d17so97290769oth.5
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 17:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wGf+52HCgW0Cs4av6wE9HZ+dXbTy/NKtMSYmOJ1YTl8=;
 b=M6WzuQ+HXdmVAEy8goBuqpENPYkG/CF1H0upSMUTSiEdfQ7mJB9awUUWX88I6ef5T5
 XuGuoH9XTNeAsCJQizvMkC7EEPJHVcv+ciYhkUL1e9awcKJSDXXBUAfulof6AMCor409
 AyqyYaLqLYPkKi5ouNT3DKW8qXRvZtP2bL4IXkbX7MMtojeuEPhpNUnc8ON5RuNeuBHD
 S8GYaQjZ/HtrIpsYR4J9l3//AANfe9rVKx0w/MNJZ4KbQmwQBt32wmOBM01oMoguNGiX
 8n3PvB5fbjU0LVnV2XaWETxirNG+ucqdrik+3C7r2AS/+rOC7w6QgBI6+GD9xFm9Zyy6
 w7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wGf+52HCgW0Cs4av6wE9HZ+dXbTy/NKtMSYmOJ1YTl8=;
 b=lW+cT1srBQn054wmKfLaMTLEq85XB6Fu2nHD6jcwGLp0Nj75js/99H4jqIQlAsfEe5
 /+K1RJ1uB+L1l7tLV1cX/nnrypzRMNoPPezu54ZpyYlXCjN1LojtAJ6t4pCoEXS3LzYm
 6uNK3J5UP23U9PuCftau6vLYKFS/0clq/uCZLvyz/NejCo/iTQKyj7TVTQ8xc0COHzkD
 mZ2i8NkR0LyN/QnbqcOimY9z0aHb7Ci+y3lo+I1KGxhpUdBQNSvISHDSCSVhVqrXwReo
 M79b3yqWRraeeAsV7XBeQCrpuphfTCnmVxx1DLGcqSiYpFRO6f7s/0KdIB6iEJkOSRTP
 bbaA==
X-Gm-Message-State: APjAAAWlf7U3SC/PXhh+7Mk6Wh8tOz8vSrMELae7VCigJIIgrxdkCVHk
 QFaXfA63j8ssYugnA+ctnMxnQLFX3sk=
X-Google-Smtp-Source: APXvYqxQ4DRvRHwHbm7zo/QPTC9wlvUY/jTeInmn2J4X/m+jRnFpixCoebdx1Pk9JID+O9OoiFld7Q==
X-Received: by 2002:a6b:c98c:: with SMTP id z134mr6186161iof.276.1565136283343; 
 Tue, 06 Aug 2019 17:04:43 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 j25sm119827374ioj.67.2019.08.06.17.04.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 17:04:42 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:04:42 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] Use CSR numbers instead of names
In-Reply-To: <20190806204939.GA19596@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_170444_410244_B204C786 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andreas Schwab <schwab@suse.de>, linux-riscv@lists.infradead.org,
 linux-kernel@lists.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019, Christoph Hellwig wrote:

> Looks good.  I've been trying to get the same patch in for about two
> month now, maybe this one has more luck..

Thanks for your patience.  If you have patches from one of your earlier 
series that you think should go in as fixes, it's helpful for us if you 
split them out from patches that are intended for the regular merge 
window.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
