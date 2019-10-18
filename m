Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0969DBBB3
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 06:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7B1HbIe3cL/EQDRy+AH1ur9qE5r07fSY+FPvWOcSMA=; b=i9f1zi0GMLngIY
	ndSNRGekg3eVd7tcKNhUFvAY909POCBdIjlchmWudJqDsOK/DyCJ9Hag+fPUn/isM5L2eOw+N3h8p
	SCBwEHnevtr4XBBFoKZ09YhU2X9tbjdBKd2r6no+Rv+l0y/Mkoh8s2TwLt5zmkUttMiDk16YjG9iH
	QJNfhdp3Vmv6ob2ADIUaK44dBs+foaVkJMAZ1nSBsAARDcwAikfRufI7hONqEt/VDdAmgEmUZGjPe
	DPSXkNBzis+DzTjDNz78CcXdxDcXS4T6wZCUMEk0Xsljk23W58oobXiG3T2XZCTeuz20Iuj5qThYW
	msT9XRdz7Gul0dyewV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLJTT-0001Dg-4W; Fri, 18 Oct 2019 04:02:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLJTP-0001DB-GT
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 04:02:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id m18so4635018wmc.1
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 21:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TGIeMHWXK53sHye5G1LgnfCP8Ga7F8A0ZVwuDPcGRt4=;
 b=JljwbGRTq1E6mquIfDwk+xIsr8rGHug6c2MDq2EbaJSII1XUYxA/xrd2MX5v/Wb+yy
 yMqgKBOTpFzBB7hjADLAg/CkmrD946ZY+ATcnXTBsYxMeYzmRmgbQDdKyPqdiDj2qMha
 XgbjW27wieRO9ktfmfDUGR4J3YTSIMf9hV4A62eqGAtTX3Vc7m3MeNR9ie7VWLXQ8c55
 uSO/mVVKpXDWD1lTVkfjKuaiZVNECxJxPjk+lt7j0OxeJeR1qdiqSC8ziCRuE5pZvlzs
 JDBLG+vv+qjCPme7i7SjW4VSHZYY0M3+dhj/TUgQ2r/TyudulEdFpv0UWuK7UF0RH01h
 8dmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TGIeMHWXK53sHye5G1LgnfCP8Ga7F8A0ZVwuDPcGRt4=;
 b=Z2MgJYnfQ9Pk7t3y5hvTGdlPDxeg7vKDLSickz6DPfc8bNSLhdwiMDiJIqSB7PxmEc
 AXpUyEJ6FcHiGhrFYpNe5ZamNhroJIbWrHB95OgVrbBEfsRxdF3m0mz/wMAFjUY3fuEx
 MaftzqRxSMbFrUiN+7qnNVfXgz7lDBedq2EwjHiFt8xIjoAoSB70p5JWX4C+KRx2kJD9
 dLEn3VIvlMaEq5wwTtzylh30TDE1jYQqB8UY+oqUvyQiJYhA+lPbQiy0DLH6V/IxYyCJ
 +NTfZl1gAnaRw7qP+KzI5XVh/h0o5FE9JBlY4k95Q07o9SErpINF5kXXf/k2quNpJTEv
 CS9A==
X-Gm-Message-State: APjAAAX95EXNYVIWcrh+YvUKxGt3qTkpnxJiCJLjjM0hQdWYxUfcEfRB
 +GgL8jhUNmFmEejbViuyH5E=
X-Google-Smtp-Source: APXvYqw2h7j0z61HR1StZiLhVSnluIve/ZvioYgT9l/NCWXf13qZK2iZSZmrNPZxvp9A/BW7wSEurQ==
X-Received: by 2002:a05:600c:143:: with SMTP id
 w3mr5566109wmm.17.1571371361356; 
 Thu, 17 Oct 2019 21:02:41 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:40ac:ce00:18e1:7d90:ccf5:4489])
 by smtp.gmail.com with ESMTPSA id u25sm3951686wml.4.2019.10.17.21.02.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 21:02:40 -0700 (PDT)
Date: Fri, 18 Oct 2019 06:02:38 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 3/8] riscv: init: merge split string literals in
 preprocessor directive
Message-ID: <20191018040237.3eyrfrty72r63pkz@ltop.local>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-4-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018004929.3445-4-paul.walmsley@sifive.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_210243_572171_7D1F77F7 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 05:49:24PM -0700, Paul Walmsley wrote:
> sparse complains loudly when string literals associated with
> preprocessor directives are split into multiple, separately quoted
> strings across different lines:

...
 
>  #ifndef __riscv_cmodel_medany
> -#error "setup_vm() is called from head.S before relocate so it should "
> -	"not use absolute addressing."
> +#error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
>  #endif

Using a blacslash should do the trick :
	#error "blablablablablablablablablablablabla" \
			"and blablabla again"
Or if need I cn fix Sparse if needed and desiable.
 
Best regards
-- Luc Van Oostenryck

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
