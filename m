Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D89E0ED7
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 02:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v660pLYu39HGvv42RnEYRmsAXBi5UNRo8247Qre9v74=; b=KWUB5pA1kZjaNC
	IWC/qou9XuXGCCVn5q5iD4MTzupYABz3BIKM9TWiFGRF7KwC1DEHHEnGeMt3F6knRNWzCDF/hRO0x
	60+61M1hH0tkCFj/Nc5Eyal6+a0jAjANGNWjzoXgur3Lxsg3ky4YbB9laU7yU2Kg1gkBmId9LarO3
	hJWm8WCJotzdRCcVoUVEUUEQyVAeL0x91YWkSRSLlDOF3wVTC6clzjB++OR/uuEnFmVA1gowxFqap
	EqhlJtGZd3/royZq5TnoDnum2O8x+BYuA2VfT87SrUMJeEbMA66ha+/sFx2Hu/t4IiwRUwuOq/EQn
	9HT2sZIcGj0Uxt1mnJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN48d-0005Wk-9Q; Wed, 23 Oct 2019 00:04:31 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN48a-0005WQ-VV
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 00:04:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id z19so22757936ior.0
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 17:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=1rtVr/ZOhpNpvbFSPZYgwy0CM3ZRkSH7ha89fWeyBas=;
 b=Y+boVY1hjhDRKWtrcGpFDcm0GwovVPTWbsrU2MchHjtOF7yX5Kb4Im3xw04s2HMhP6
 pwDTJ7wiXMpBV28Pj4VO7o+mPBCGcnyZNITcfem8VeyJ34KmCNuY+39RX3ArXgcvg83l
 ufDPIFtVbLF0kDbtdYw0ovgumUPXSmkXUTrO6CAx4g3kMiuzRIKtyW/OSBxCITcv/wYM
 DjM30dPrY8dIvSDk4tuEtV5F6krPfdImPHc4bqzMJoIsNsOeXHbYra7kY8OElLJaQNcG
 zqHuuH/eKwoIcU3sDgeWUl+gi4TJs8GbpztY1vSxQe8bSJg+kk0GeGAlJ+NQRTZAR14Q
 YxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=1rtVr/ZOhpNpvbFSPZYgwy0CM3ZRkSH7ha89fWeyBas=;
 b=TNyvD4F1lldQy1TiqeoCPuGuSjeez93px+wfTLiCJfNdFveIdUR+tE31UQ+xs0YQ3J
 t6kUzmEWOmm9KVI9T88PyLfUg+UYK9YMOpw2pP46PR65+5W9FnKFPLi2hhRsyOCVbcYy
 MMMaW3jOli855zbfL/BQ+kcUor6Wktyw1Lc2ImrYN5lUthgIJLoraBGpbTiEVuNSQwz7
 XAcfBE0YHSzhxTTWR6uZ1q4wTFOlwSzA/k2miJxDR9VSg1SRtYDpb4YnT6HJZMx3wFgz
 45v3FB7QMReoh+ygYrWk8LEIIKCoTG3wThdTND1uIby8S8C1ncxzZrwQumi/Uu0oPwPJ
 hd/g==
X-Gm-Message-State: APjAAAUamIwz7zVolvQGyQdBVkPMwNuYMa29S9mF9yPKdiuNf8isSkQg
 wkhld8IjztB9N3v2gPcjsebv5A==
X-Google-Smtp-Source: APXvYqzyoNKcYzwZ/8xyNs7i4pJ3CtGNzrEchhGUJe7DwTb0UAJxkLfB10L7NcRu39S/HmlD+n1LNg==
X-Received: by 2002:a6b:d61a:: with SMTP id w26mr477097ioa.159.1571789067401; 
 Tue, 22 Oct 2019 17:04:27 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id q66sm8814241ili.69.2019.10.22.17.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 17:04:26 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:04:24 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH] riscv: fix fs/proc/kcore.c compilation with sparsemem
 enabled
In-Reply-To: <20191022162136.19076-1-david.abdurachmanov@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910221703540.25457@viisi.sifive.com>
References: <20191022162136.19076-1-david.abdurachmanov@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_170429_043049_7A3CDEE6 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan O'Rear <sorear2@gmail.com>, Palmer Dabbelt <palmer@sifive.com>,
 Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Logan Gunthorpe <logang@deltatee.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019, David Abdurachmanov wrote:

> Failed to compile Fedora/RISCV kernel (5.4-rc3+) with sparsemem enabled:
> 
> fs/proc/kcore.c: In function 'read_kcore':
> fs/proc/kcore.c:510:8: error: implicit declaration of function 'kern_addr_valid'; did you mean 'virt_addr_valid'? [-Werror=implicit-function-declaration]
>   510 |    if (kern_addr_valid(start)) {
>       |        ^~~~~~~~~~~~~~~
>       |        virt_addr_valid
> 
> Looking at other architectures I don't see kern_addr_valid being guarded by
> CONFIG_FLATMEM.
> 
> Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
> Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
> Tested-by: David Abdurachmanov <david.abdurachmanov@sifive.com>

Thanks, queued for v5.4-rc with Logan's Reviewed-by:.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
