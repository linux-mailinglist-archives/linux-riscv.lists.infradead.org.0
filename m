Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3241EDBD82
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 08:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSpNQfD5Fjfw2GGG5MHsJbrqkCVQMiM09NnKcuEsP9Y=; b=JW20EhAptENQhi
	SGE5mYAArbFlSuqYRXGfQDg+3USbU4tAbeDJXrtS+N00PEIsIQQpoddRIQUEwTdSPrm9rxqlT59BN
	MdevEMG1ISzsS/UnKKTfK1dkaoKNIAxXxB9WbIs1XtzsDXkWCLXTS8kRnUeQqubfisLeBEmCf7Orx
	LBZf3xB4pF9/FKF6tFJSHnhbZYC/379Wftgx3YCOIi3ELUiywEyoJ183QSGY/GKRTe35PJKo/yf/u
	4FXUZkhP09crWnx7rmcpjt5mnsWs9TpWDzxK37WadBk6Ym7SSdjn9PCFRwjqBi4LUZ/OT1fsI8SJ4
	yvbj9PrS24c3wieQzZpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLLR3-0006iL-F8; Fri, 18 Oct 2019 06:08:25 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLLR0-0006hp-Hf
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 06:08:23 +0000
Received: by mail-il1-x142.google.com with SMTP id a5so4467289ilh.6
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 23:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=7e+V7TaWRTvEWCyZ3TIBozn+C5eqQAWMSVjzjswVInM=;
 b=FCqTGYJL4pcSf09mUXTCjzzD/tN3GA+pmkhsswPDoSW9RMSfp1NX0HlpWVZVFKaJsO
 yOkJo6TaA8Njus7B3/phczPKLgPYZRo557wLrJb1n9FXSxOkwU8EuxO7aqwU4tyTH/o8
 9dOlTKITXaZxpxg9rjDfI6S86wzzPy/La/9b7g0Yvo8u3ahiXsJul2DBCLR1zF5OekAL
 HLJ/AoD6Zsn62pDmSaL9kV5Ofc0jKiR2gUwHTh3+Z3uBSMh/l4cWDAJ+56JWYTBAC6q+
 Hsj02s7BERuahGOWHyGcT+SayLq5wSAoUD12NIR/1RWM4X7uX3UTUsaRsGqvjbTrlOJp
 X8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=7e+V7TaWRTvEWCyZ3TIBozn+C5eqQAWMSVjzjswVInM=;
 b=hlZGLKNmZBAZQWXBsjSlkdc9vWUBxhKrImPZtQeBFV1dAuCVSkLHBq4y9i2C56z8qo
 nVebJtfu1PtLmWJQNQy2QlE4AZ8XOBOshLtQDBx6i2o2HuZKWVpBCwvP0ZA85ngTtCCg
 AvfsN6vpDlZgWiHOJT7TfJp39DQA/xaxvSkIYr8Z17rbNfwkqRf2p0GIU5p7fJKbBZJm
 qgpJCt5hBG0keO0+96j4rOc3vNvUCOBVjaXoBs64ydhNFKTptnIF48K9ltjnburmb1kT
 HZBNbbSJ5ePDOak6/z9kN3YY4cxGVHDjqR964ytJnNcwu3VZ/mzHpmThfxiXLS/hfr8m
 hkog==
X-Gm-Message-State: APjAAAU1vUU387MwOhNFyIuFXiJeygBBvyd9USHBNka894nwq29NUakL
 /S5Fadc3+MOSM9rhiFqz+gsSnw==
X-Google-Smtp-Source: APXvYqy6cRVxQ8WFikS9agdaOHvo061IYTxDdIlT0KRlw+j2DvEynitlghuOY1kiVGqMrBOfmsWx7g==
X-Received: by 2002:a92:7982:: with SMTP id u124mr8515068ilc.161.1571378901624; 
 Thu, 17 Oct 2019 23:08:21 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t24sm1478227ioi.44.2019.10.17.23.08.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 23:08:21 -0700 (PDT)
Date: Thu, 17 Oct 2019 23:08:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [PATCH 3/8] riscv: init: merge split string literals in
 preprocessor directive
In-Reply-To: <20191018054701.sjueyb3agoaopnla@ltop.local>
Message-ID: <alpine.DEB.2.21.9999.1910172307260.7801@viisi.sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-4-paul.walmsley@sifive.com>
 <20191018040237.3eyrfrty72r63pkz@ltop.local>
 <alpine.DEB.2.21.9999.1910172127220.3026@viisi.sifive.com>
 <20191018054701.sjueyb3agoaopnla@ltop.local>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_230822_588233_0220F4FF 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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

On Fri, 18 Oct 2019, Luc Van Oostenryck wrote:

> I quickly checked and gcc also complain about the second line:
> 	$ cat y.c 
> #ifndef __riscv_cmodel_medany
> #error "setup_vm() is called from head.S before relocate so it should "
>        "not use absolute addressing."
> #endif
> 
> 	$ gcc -c y.c
> y.c:2:2: error: #error "setup_vm() is called from head.S before relocate so it should "
>  #error "setup_vm() is called from head.S before relocate so it should "
>   ^~~~~
> y.c:3:8: error: expected identifier or '(' before string constant
>         "not use absolute addressing."
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> So it seems that gcc doesn't join these lines.

I guess that's what I get for assuming that the original code was tested.  
Thanks for doing that, and sorry for the noise.

> Fell free to add my:
> Reviewed-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

Done.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
