Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BAE114A38
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 01:24:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfZHeXuJEbXcmprNo/tS8npdfHly9KU1e9LZKEtMFwg=; b=k+jHyMdasa/NM3
	5EvLhqEhvVAGDpicaAR1BJAA4BdruiaubFUTjoCHuz2fl2EJXNW8DubIb9fzOXszgX9vwJHOQA1gM
	TTpxwS3Tazs2U3sfUvSix71MBAVisCCWaeqH2u02nRhx2qiPhteTN8/Nf8YGh1+Gk8sYOHMGCRbNV
	Sg+YBZt6Kck4xPW7LYGnkc/VSVZfYEePDqfNX0G+aEfOjVQITWGCCO01eGJPayPubuL/4dij1bZRi
	0qiFaFx9qKgRuE0PpbAqn/T4YpIF2ACaWL3EbIQrPRr/wMhAp5fPbz6Ftjft8TQcWsnQh4hze1rzT
	deUiHnZcmmiLXcJ7wa2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id1Pw-0001bW-66; Fri, 06 Dec 2019 00:24:20 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id1Ps-0001b3-No
 for linux-riscv@lists.infradead.org; Fri, 06 Dec 2019 00:24:18 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id AB631531;
 Thu,  5 Dec 2019 19:24:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Thu, 05 Dec 2019 19:24:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gstardust.com;
 h=subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=mesmtp;
 bh=qfZHeXuJEbXcmprNo/tS8npdfHly9KU1e9LZKEtMFwg=; b=YIdn+otsAxn5
 qsgvHf1DIzmZPx+hM9N6wJ2/F5iWfdgXf06g1XMxusnBTMFuUiC1wyi1MiwpKYDJ
 ezRm99z674cdhUkAF3Q3M5mjNwQAKZK/hHnggTBt2BZCI4TTIATWjX216Ekc3P8q
 XsWDsCqrfK/c3yITkX4flCEU4H3uENo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=qfZHeXuJEbXcmprNo/tS8npdfHly9KU1e9LZKEtMF
 wg=; b=r/sXnTULic9bxTOnKT8X/DV1dG2lTIiiVLwBcOMKHcIyA5/2/OtIWEQNV
 Fyw6kZAAy+z7FYw85GBNGIQRngT49bxFOWJHL9ClRo42e15olpMkotc5TVgivR2+
 clPwnQUx1IsVbO67YV4nSk2zGJFXqqyNhZvILJEXzYGxqw44sGFHfhgbkAidhEEY
 1Wkjf368maSFbh65c0n1Ky4N7ISqso/0xLrQJVcuS6oVL9squTYbuVx5yfwqwnpp
 AA1a2lumxwyjw7YOs30qNI+Sf8inrtjmQgzV9P4PfprqPkiGkg3PpRiR08u/8MMz
 1I19iDOSVoMNJ6umwFZX4zQfbsgCQ==
X-ME-Sender: <xms:q5_pXdsKlCkUObWs8URDPXXnSbAI-dgsIAxD1FpKSWSBRrsnLt2GzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekuddgudekhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeforghr
 tgcuifgruhhthhhivghruceotghonhhsuhhlthdqmhhgsehgshhtrghrughushhtrdgtoh
 hmqeenucfkphepudegvddrheelrdehledrvdelnecurfgrrhgrmhepmhgrihhlfhhrohhm
 pegtohhnshhulhhtqdhmghesghhsthgrrhguuhhsthdrtghomhenucevlhhushhtvghruf
 hiiigvpedt
X-ME-Proxy: <xmx:q5_pXWBLaIalipFu47YeAjx9EhiYClqqWSKu-ORr2qagXtcSXkdGTg>
 <xmx:q5_pXaLb6yYQzUivZvDtEqH0Kt_50WN-FNm1fIXuLgzhAOevxDqDOw>
 <xmx:q5_pXdB3fZt_j4g4Mjya_TO6mjwvqtplWL_i55-su5qYqNa_ZxFfXQ>
 <xmx:q5_pXQG6GW8Bg8evWIYvLQ8XnVP-bIwTlMsJOmgqTja3CjfQn9hyXg>
Received: from [192.168.2.49] (unknown [142.59.59.29])
 by mail.messagingengine.com (Postfix) with ESMTPA id B6FD230600DC;
 Thu,  5 Dec 2019 19:24:10 -0500 (EST)
Subject: Re: [PATCH v2 1/2] riscv: Align shared mappings to SHMLBA
To: Palmer Dabbelt <palmerdabbelt@google.com>
References: <mhng-97bbfd0b-0d80-4e3a-8129-2e671b51157a@palmerdabbelt-glaptop>
From: Marc Gauthier <consult-mg@gstardust.com>
Message-ID: <2d73d309-441a-5f9c-df2c-69ae3a7ec77e@gstardust.com>
Date: Thu, 5 Dec 2019 19:24:06 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 PostboxApp/7.0.8
MIME-Version: 1.0
In-Reply-To: <mhng-97bbfd0b-0d80-4e3a-8129-2e671b51157a@palmerdabbelt-glaptop>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_162416_919829_46769B2D 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer Dabbelt wrote on 2019-12-05 18:03:
> It really feels like this should be generic code to me.

Indeed.  The generic mm/mmap.c versions might be generalized a bit.


> It looks like the only
> major difference between this and the routines in arch/arm/mm/mmap.c 
> is whether
> or not MAP_FIXED alignment is enforced, so we could probably just make 
> the
> arch-specific code be arch_cache_is_vipt_aliasing() which on RISC-V would
> always be false and on ARM would be the current cache_is_vipt_aliasing().

Probably right.
ARM uses find_vma() instead of find_map_prev() as in the generic code, I 
haven't examined why exactly.
And their use of PAGE_MASK here is redundant (SHMLBA needs to be 
page-aligned):
         info.align_mask = do_align ? (PAGE_MASK & (SHMLBA - 1)) : 0;

"cache_is_vipt_aliasing" might be a bit misleading.  RISC-V caches can 
be VIPT-aliasing.  They simply can't let that show up functionally to 
software.  Maybe strict_vipt_aliasing, or ?


> ARM is also using a different alignment expression, but I think they 
> may be
> equivilant.  They have
>
>    #define COLOUR_ALIGN(addr,pgoff)                \
>            ((((addr)+SHMLBA-1)&~(SHMLBA-1)) +      \
>             (((pgoff)<<PAGE_SHIFT) & (SHMLBA-1)))

Yes.  After looking at this and others carefully, it was clearer to use 
the existing ALIGN()
macro, and now pgoff is shifted once instead of twice (optimization 
habit :).


> LMK if you're OK doing this, or if you want me to take over the patch 
> set.

You're certainly welcome to take this on, if so willing.

M

