Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFEB107FEE
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 19:30:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=+L0AzycwDvduqt/lJ5/2UvZ51fOJF9FBKddXp8Bp8Ks=; b=ITw4fKTiKLl9oPEWz9c8mIAxU
	SjDYoM6O+tlFNVRAXAIdOJMHZC/QoJOxCEs3RgKKhlXlWC5zfHBgitQsncfLtgofrZruiaiRP56p6
	YhN483SVMhh61Cqqf5JmMZmvSLxL/LOoIgR6qQRD33iOPvsNfBG6soGj4TAjRWet/uXPCB/ch0Bdg
	vb6n5KfXjrdQQOQPFGbS9nmyQla9rcJxYeczGNzSRo/DiFBqGzD1WOJxZYmog4wBwyeMp2SxqofZl
	+gCMeHacq/wFv75DQT2h/8oDshJPhs9fzMbzQYXexOfhgb0rS+9SZ9Sc3GDraJCas8PDexleHSGsz
	lwWdZdC6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYaAM-0006EJ-1j; Sat, 23 Nov 2019 18:29:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYaAI-0006Dl-G2
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 18:29:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id az9so4611197plb.11
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 10:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=TES+D47gjUEYLRi0DVPp3J/8b4TWlZhdLdQzXfHGuX4=;
 b=tPlWJIgYpLWxBMHIO+01rkY8YKxvLtDYYVMoe/agzNO7wcd6XN4T3Oxg18xvGSlu2t
 OABJrLs27BBj6Xf9sdIezGJ5bya1ZQyYD1Cd0qaaSgdCoxhC+bN0VH2IXZhoPbyKSZFN
 tLdnqE8ZNvfhOIHZ1HTl0InMhWgPadCNG9opM3qdZBlVJurXrYT0bMtmN8pPZVRKS9Xe
 6eXHrMcrkpPO3jSrOKQWSnedNH+QAh3QD40h/MZ+l6dC96Fh7K31D4R0I8d4jrgQHsQG
 bS9Gb07OQxOie7CTOH8Y4VX/AH8cTjdnCVBPvA2LQd8Rfrt1hThwORt95GNgvwBc0ZN1
 6lIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=TES+D47gjUEYLRi0DVPp3J/8b4TWlZhdLdQzXfHGuX4=;
 b=dYm65vVal9RhkeEYzhrhtNvLiPTTbtuevRtJZCMNEZ8RDFT7ffE+UD2Krb+n9otq00
 oy504VhpU2rKbhzBktxq1nKcVz9sK6q3MVkKPECsxyBPON8ithR6rfpzE+YSe1vazxZy
 I/v5uDHPlm6eGeHXEUheei9Kkz3J1enJMrP63izPOVr0UHNf4dGVbW2KxIvUNyHdH518
 XS9PLwZuulzb8Y458ieHmVw9Hc/LXlmdM3LisWHxkKEPer249YjQz3PUdhKa+o4STPCi
 EPVRNlohcmtn+iIhZAINTYZXPUvReoK+ACPLbdYGNSlyg3Hd+3x3nOEas60Qc/ICfIis
 KYQA==
X-Gm-Message-State: APjAAAUNfSJd+07PWGwdBPLPyrCrZslNIfZh7ZSyqmICLQdcF58I77eB
 yShT/kdq6Kdm3Uo5Vh2ADAyHxENs0Iw=
X-Google-Smtp-Source: APXvYqw7ayFmjaG98HZR4MgbH2glRl8JwiusMos4hjFqGGyavQywamTVSiYvu2KXur0XuWQM18gYiA==
X-Received: by 2002:a17:90a:1:: with SMTP id 1mr27811515pja.42.1574533788576; 
 Sat, 23 Nov 2019 10:29:48 -0800 (PST)
Received: from localhost ([2620:0:1000:3510:a526:6d27:395d:e917])
 by smtp.gmail.com with ESMTPSA id 81sm2331345pfx.142.2019.11.23.10.29.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 10:29:47 -0800 (PST)
Date: Sat, 23 Nov 2019 10:29:47 -0800 (PST)
X-Google-Original-Date: Sat, 23 Nov 2019 10:24:07 PST (-0800)
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
In-Reply-To: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-ff930dda-c0ba-447c-9753-03dee62ba21c@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_102950_559998_93CF51AA 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 corbet@lwn.net, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 18:44:39 PST (-0800), Paul Walmsley wrote:
>
> Formalize, in kernel documentation, the patch acceptance policy for
> arch/riscv.  In summary, it states that as maintainers, we plan to only
> accept patches for new modules or extensions that have been frozen or
> ratified by the RISC-V Foundation.
>
> We've been following these guidelines for the past few months.  In the
> meantime, we've received quite a bit of feedback that it would be
> helpful to have these guidelines formally documented.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Krste Asanovic <krste@berkeley.edu>
> Cc: Andrew Waterman <waterman@eecs.berkeley.edu>
> ---
>  Documentation/riscv/patch-acceptance.rst | 32 ++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644 Documentation/riscv/patch-acceptance.rst
>
> diff --git a/Documentation/riscv/patch-acceptance.rst b/Documentation/riscv/patch-acceptance.rst
> new file mode 100644
> index 000000000000..2e658353b53c
> --- /dev/null
> +++ b/Documentation/riscv/patch-acceptance.rst
> @@ -0,0 +1,32 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +====================================================
> +arch/riscv maintenance and the RISC-V specifications
> +====================================================
> +
> +The RISC-V instruction set architecture is developed in the open:
> +in-progress drafts are available for all to review and to experiment
> +with implementations.  New module or extension drafts can change
> +during the development process - sometimes in ways that are
> +incompatible with previous drafts.  This flexibility can present a
> +challenge for RISC-V Linux maintenance.  Linux maintainers disapprove
> +of churn, and the Linux development process prefers well-reviewed and
> +tested code over experimental code.  We wish to extend these same
> +principles to the RISC-V-related code that will be accepted for
> +inclusion in the kernel.
> +
> +Therefore, as maintainers, we'll only accept patches for new modules
> +or extensions if the specifications for those modules or extensions
> +are listed as being "Frozen" or "Ratified" by the RISC-V Foundation.
> +(Developers may, of course, maintain their own Linux kernel trees that
> +contain code for any draft extensions that they wish.)
> +
> +Additionally, the RISC-V specification allows implementors to create
> +their own custom extensions.  These custom extensions aren't required
> +to go through any review or ratification process by the RISC-V
> +Foundation.  To avoid the maintenance complexity and potential
> +performance impact of adding kernel code for implementor-specific
> +RISC-V extensions, we'll only to accept patches for extensions that
> +have been officially frozen or ratified by the RISC-V Foundation.
> +(Implementors, may, of course, maintain their own Linux kernel trees
> +containing code for any custom extensions that they wish.)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
