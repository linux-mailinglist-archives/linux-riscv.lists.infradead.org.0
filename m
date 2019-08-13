Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A14F8C4E9
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 01:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=uGnQTlLMvgMIOcHkdG7vs26DzUwKNXYJbGZSCO9Gy/k=; b=GcBOCAAMYvtw/Nkm8p/yT2aUY
	BUED4UUSYWCTHnmRNjGVkLl99eB8XAV02ovMq6sZJ4CcFpbmNiA2RqUQTaPgIg85M6EVzFl2LXDC6
	aGZTXP+stOmv4wgmSbiLLTWB+uqyTFnzl59oReypyKrqi28gRG+zHzlmpfp3COVLg1kG72T4UptfG
	Ha+0msHwDIpukLI7bOPpR6cb4pEWHkizjQo3qc4wKyKI5yFXiOlDO+uzA8M2OsEEf1XTeB06Dhek5
	HT/z2PvLJOgur9Nfh/BY9AEAoF38bgSJaS4nmCrz/JW3v7KPZb0fjrYlUmI0GEKBr8rC6J3CZK+yL
	gA2RBU5hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxgZI-000460-3p; Tue, 13 Aug 2019 23:51:08 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxgZA-00045f-Hi
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 23:51:02 +0000
Received: by mail-pg1-f196.google.com with SMTP id w10so52081538pgj.7
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 16:50:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=IbdE2KInyJodKUCtVAuZWET2xZ1Z2VbKwChNL5TWr0E=;
 b=tN1okLCjo93Wf2+DVNfAnVC6IROKBfbdo2dv/M0ZIMdPZi+abpRmiKDEfoRbhuUelU
 8vrLmQiaJ7TqipwOpWssE9EtUauEtNcfDL2eoc1fb2OEtTORAu7sSROGHVVSJobwnmZh
 vTrL33Svf4Slk33I1CjPaD3Y8fFWhCxTh7QfCBlLt1OOgh8Z0v6ZMyhqbRkgAsW3s56N
 YD2teIrCzzEJsCrsbC+RlARgVIAa7uI1JnauWgq+Cbur37xMi+9gF/4aycPLvli+kNBW
 o+hlxEmdBirSl2UCokP+ixKpq6rmqkYjT7svWx3fNG8iRENEnBhEZq8NmtJgNnMQvyQJ
 DWrA==
X-Gm-Message-State: APjAAAUogI4OCQpCsrhJmHa84rFCeNGS2HoBwfPqChWi2Mj+bM4zgkmw
 hq2toz5btCX5gJRTePbxYT/QBw==
X-Google-Smtp-Source: APXvYqxNATMcBumSiCPFS8wNZtu0n7swBqrFa9SgTQsdLIQjGnQbyX6u8CwOsBbSclJCrlnkebwj+w==
X-Received: by 2002:a17:90a:2c9:: with SMTP id d9mr274835pjd.134.1565740258768; 
 Tue, 13 Aug 2019 16:50:58 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 81sm163022302pfx.111.2019.08.13.16.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 16:50:58 -0700 (PDT)
Date: Tue, 13 Aug 2019 16:50:58 -0700 (PDT)
X-Google-Original-Date: Tue, 13 Aug 2019 16:49:25 PDT (-0700)
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
In-Reply-To: <20190812150446.GI26897@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-ba92c635-7087-4783-baa5-2a111e0e2710@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_165100_738505_6FDA7F34 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aou@eecs.berkeley.edu, nickhu@andestech.com, alankao@andestech.com,
 Atish Patra <Atish.Patra@wdc.com>, Greg KH <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, zong@andestech.com, alexios.zavras@intel.com,
 glider@google.com, green.hu@gmail.com,
 Paul Walmsley <paul.walmsley@sifive.com>, aryabinin@virtuozzo.com,
 tglx@linutronix.de, deanbo422@gmail.com, linux-riscv@lists.infradead.org,
 dvyukov@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 12 Aug 2019 08:04:46 PDT (-0700), Christoph Hellwig wrote:
> On Wed, Aug 07, 2019 at 03:19:14PM +0800, Nick Hu wrote:
>> There are some features which need this string operation for compilation,
>> like KASAN. So the purpose of this porting is for the features like KASAN
>> which cannot be compiled without it.
>>
>> KASAN's string operations would replace the original string operations and
>> call for the architecture defined string operations. Since we don't have
>> this in current kernel, this patch provides the implementation.
>>
>> This porting refers to the 'arch/nds32/lib/memmove.S'.
>
> This looks sensible to me, although my stringop asm is rather rusty,
> so just an ack and not a real review-by:
>
> Acked-by: Christoph Hellwig <hch@lst.de>

FWIW, we just write this in C everywhere else and rely on the compiler to 
unroll the loops.  I always prefer C to assembly when possible, so I'd prefer 
if we just adopt the string code from newlib.  We have a RISC-V-specific memcpy 
in there, but just use the generic memmove.

Maybe the best bet here would be to adopt the newlib memcpy/memmove as generic 
Linux functions?  They're both in C so they should be fine, and they both look 
faster than what's in lib/string.c.  Then everyone would benefit and we don't 
need this tricky RISC-V assembly.  Also, from the look of it the newlib code is 
faster because the inner loop is unrolled.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
