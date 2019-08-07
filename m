Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C385F83E7F
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 02:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiSf0LLGc/zcxfOLxKx1xUJwH6pulM3sT0BOdcHp6ds=; b=Ap00lE0FW7oXX7
	9YhRKFUFhymFbLVOoB3mt2GaqSmqNWu3Z9CndOj2WUokM96qQ1nmFPakxBg3PWwPCujxPR/xf48te
	ZCO5vMiOhA0qxM8Bv1GOzgeZlTQOtE2+lMo5CGaoSvvQCByFmkNlIQ2YIYehezPHlZ3ccZFu4GS17
	h6ZNFC4j4kUC0cNhpgfMghVRLZB5HDcvRqvU9gjLbUK/laR9CB9gdZxyDjE4RD/QyXQ3s1+AVoope
	J/Lv8eFjLFDLzsxdrsVOdbh/J6wSYo5N19ASVN2JuWDWNMSPNV5Uq4yOUKufIW81yrj2NHCWP0bu0
	RZdXN/6mwRR6Uqd6ZS/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9yh-0001XC-QB; Wed, 07 Aug 2019 00:38:56 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9yO-0001Dq-G6
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 00:38:37 +0000
Received: by mail-ot1-x343.google.com with SMTP id l15so97484503otn.9
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 17:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=r9aZG3WBUIIVJBTg4zGg11dwwhiuolyehMNVzZ5eqrQ=;
 b=LQDph4NSxNmCCPjHbwh7t+2ZW9h3DwfDdXwrGdaioqazRmL5vkLdGGgzWPVm1zKyzn
 BA7k83m5DpsXflOvSfYfdGmFiueyl3YN9a7zJkfVtbiwxWzpyrWdDqZb3XXaASaEpHR7
 ULDs9XvDov/DZpX6qZggmu9UwoBu7RueSZMYsWhFFn1aUx9JZIdX9QJlyEHCoCnDr9s9
 HtbfpB5LmIFbLLBBXjCnQuJVQ+PSDxUQEGRfWDMR2QkOF2UheEbn3UcgyMC1XQZBMnMI
 JAqXtxz3WWtqxhy+AF6b02tPRaLyWjdj9yjpuEq1+tPEfvvIK1ZpFdcqxjNyIkl6yDK8
 SXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=r9aZG3WBUIIVJBTg4zGg11dwwhiuolyehMNVzZ5eqrQ=;
 b=GRq86OrufrpH5MGa61PeU/HHKVlz69HVMJc/RFx7hhx5zqvUrUZsHDIBFFs9pTeM2k
 RYeHsuVaWBF2Wos5J+fL6LPY9hBULcJ634puGxvEVEBG2kwW9zubkc1O99z2hixTUeF9
 rgROY0nxVbet4tnAllCbYlJIQuowJRNLpo6xirsughoG2/sIvk093HtknZ5k1DnHKo/E
 hWAQl+DwT7dpLrvskhuTrzGbLx2DnPSdviRWTqCFAONOr1D3/KKJuRGwwCyXQDUaC9nY
 R9DJIgqIn/5J/Vww4o3h/VU2QMFQuu9SE06DQX0ABXi1trmGHeICOE+Jvtxbwfolof4h
 W/FA==
X-Gm-Message-State: APjAAAX/qJL/pKBVR4tNxGVCFme6mFwkdQqW27ErK96aF9W/QIRWvJov
 cw7pX8VffxAlfuAWypqnvcXqew==
X-Google-Smtp-Source: APXvYqzORKNPpmwutZw7E7T/rup0QJ5/yH37vr3jNp0Acp5krKxTOeK6ykXgM0DUPGoIkU9Y4J4KZw==
X-Received: by 2002:a5d:87da:: with SMTP id q26mr6535508ios.193.1565138315621; 
 Tue, 06 Aug 2019 17:38:35 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 b14sm99393706iod.33.2019.08.06.17.38.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 17:38:35 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:38:34 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alan Kao <alankao@andestech.com>
Subject: Re: [PATCH] RISC-V: Remove udivdi3
In-Reply-To: <20190807001846.GA21655@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1908061738130.13971@viisi.sifive.com>
References: <20190807000508.9477-1-palmer@sifive.com>
 <20190807001846.GA21655@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_173836_608372_0281D9A5 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Alan Kao wrote:

> On Tue, Aug 06, 2019 at 05:05:08PM -0700, Palmer Dabbelt wrote:
> > This should never have landed in the first place: it was added as part
> > of 64-bit divide support for 32-bit systems, but the kernel doesn't
> > allow this sort of division.  I must have forgotten to remove it.
> > 
> > This patch removes the support.  Since this routine only worked on
> > 64-bit platforms but was only built on 32-bit platforms, it's
> > essentially just nonsense anyway.
> > 
> 
> It would be more complete if we add
> "Reported-by: Eric Lin <tesheng@andestech.com>" here.
> 
> > Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> > Acked-by: Nicolas Pitre <nico@fluxnic.net>

Thanks, queued for v5.3-rc with Eric's Reported-by.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
