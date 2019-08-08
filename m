Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA64086DD9
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 01:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qA6mZMwxrYBU1MjAMn9rJO5b9HGbUGqQlkQSwa0Y6c=; b=KafX3XLw/NN52k
	vAaEAiZPXN3hQ+6crQs6Zj+p4jDGJEdj1aD5eCTSc69w3sjNRHY+OtJ8Qs6/EU6EsXHqGhJVy2fQS
	sLoIbjV1GtGzO1ioQGzBDtcp9koOqkBI8JAnb0xS1dtW4gwCfZyePJjafbRS/n5RiTxoun/eD+v1N
	qWO71vyg/k8RFsNeeVsCkVazHbgqwhMwDAHaVRgnYG7PbCpZrsVNkYZYsol1cckj75do19qAAYlrm
	xGoF4j5EOeHeMeotf4UCG5r8i0H8LcFnJgDQy/SSadyhcMUIgYHlpqOx4hLm0Niu+Z0eWplQ+BvxT
	h+Hzqrxq2wpHunV3/wsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrjs-0007dG-70; Thu, 08 Aug 2019 23:22:32 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrjo-0007cp-V8
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 23:22:29 +0000
Received: by mail-ot1-x342.google.com with SMTP id x21so32307085otq.12
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 16:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=yo53A10QsIF3XF0Bf4xyGS53E9kiosKFbv27vH/Lz18=;
 b=RGMUuN+uZ56NjxAK0C1mhv22NA08OkeaIhz2c2SqFGjp32NDWIxsl1BjVWBIrWGqqy
 eVmXcq22KWyOpWhm8k2bCOvSoKwKOCddp9/L433MsZSOdHiA1KcaLzbKQWE8UqkysaEh
 SEqOtcPo9la96yRagHcyqAGJjZogTq1HWq9pU4R2t8tmFB7LafGUzJv5e4oB1LMgPJlF
 ZAAyWvjq/UlbTHYTvit/Zqv79CnZDf6/VNxXNacQxO8bE+itlqaCUaXXTh3+kDRjIojX
 zWsLG/5vX+RxVD+DOf8SeLLDB07ehTYMA5ZM1zgJWI0E2qQLoBaVtTZXcSheSjOpml+W
 3+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=yo53A10QsIF3XF0Bf4xyGS53E9kiosKFbv27vH/Lz18=;
 b=PUaM45ndoZaqGSvW7U9bRi1XJFnOFK/P02tC26HU6goMbeDeCSu1sG+9DfBEeiXA8d
 u5kQajOkvfRxM7cHV7xRNc9l28XuLP5Uo1lOXFx96KIv7MebKPEP8QMNaXAoWDDS1r03
 7aJ179qoaTXY/wqoZmpwcz0fzi1faDRJtrt+RBo6uTuxWtVEyqtUbInaytm31rJPuWSH
 lWZSrnAlWf+cJ010mJiXVmxKO40Es6AMmI+TX3uv201oU6dcl/beiRn4NjZH6y+PUwC9
 +HZzVukT1z2UysLvDjcQj4KtrWtrRaYruE2wzUKawHIxZZTNkIEKKoXzAp62iBxmVfjZ
 y07w==
X-Gm-Message-State: APjAAAW0GEI1JlXvGPwTRkiMzBQ+ZNp+oQHniiMdqiZOgLQq5VzMy5WP
 P+/EZemC+toSQIjpPcsEZ/xWew==
X-Google-Smtp-Source: APXvYqyut0MaAojt4oQBMYDbrqnOQe3cs7lpeIX8YsgToxuKXyji9/ZByGtjbWQ9UVGGda0uKixR0Q==
X-Received: by 2002:a6b:6516:: with SMTP id z22mr17741943iob.7.1565306545766; 
 Thu, 08 Aug 2019 16:22:25 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 i4sm118719877iog.31.2019.08.08.16.22.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 16:22:25 -0700 (PDT)
Date: Thu, 8 Aug 2019 16:22:24 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: akpm@linux-foundation.org
Subject: Re: + riscv-kbuild-add-virtual-memory-system-selection.patch added
 to -mm tree
In-Reply-To: <20190731215335.XZNjD%akpm@linux-foundation.org>
Message-ID: <alpine.DEB.2.21.9999.1908081620450.21111@viisi.sifive.com>
References: <20190731215335.XZNjD%akpm@linux-foundation.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_162229_014821_371B9286 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, bmeng.cn@gmail.com,
 mm-commits@vger.kernel.org, linux-kernel@vger.kernel.org, alex@ghiti.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrew,

On Wed, 31 Jul 2019, akpm@linux-foundation.org wrote:

> The patch titled
>      Subject: riscv: kbuild: add virtual memory system selection
> has been added to the -mm tree.  Its filename is
>      riscv-kbuild-add-virtual-memory-system-selection.patch
> 
> This patch should soon appear at
>     http://ozlabs.org/~akpm/mmots/broken-out/riscv-kbuild-add-virtual-memory-system-selection.patch
> and later at
>     http://ozlabs.org/~akpm/mmotm/broken-out/riscv-kbuild-add-virtual-memory-system-selection.patch

Could you please drop this patch from -mm when you have the opportunity?  
Based on some feedback from Christoph Hellwig that this patch would break 
randconfig, I've decided to abandon this patch for the moment.

thanks


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
