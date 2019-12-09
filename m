Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD96117302
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 18:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MHQW4be184f/yf/1QbvgrnCI9Q3h1KDp0e7s5WvOx80=; b=HYc
	xWtK2Ad4/wQzhTOcxceZMojqVBoF3gHfZWEzq/yrIKRV8meg0qSbgL2KUgTKintxvkAvv9i60xb8V
	m+yEbrL+7VdtwJwoqqpeRc/rYgk6S8vPFsc/aCio8Z1g4zWlwpTdIppKR+5E2EU8TMSJcPmZkgt/m
	d3TPM4wPD2AVxmPHcprYksXVpBQlo7i+zUyi2LZdYf8YfXb6XbyfIGb+so5cpFGK/OSSiYSrcsRbJ
	7MMSsh61BZoDIgJkD2x2Z1YwBU9OUofFqxTv7w5hDWLlTQ1BoJP4rFP8h/efqCvi1/LUEiMKdr9YZ
	un4bsgnWT/UGuo7R+MA0eiOfiK04Zlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieN3w-0000GQ-MY; Mon, 09 Dec 2019 17:43:12 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieN3s-0000FJ-4q
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 17:43:10 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l4so6197765pjt.5
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 09:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=MHQW4be184f/yf/1QbvgrnCI9Q3h1KDp0e7s5WvOx80=;
 b=iyr3QIx/LlLHFds2Y0VY7sk3AvbQjB8nonA4QpSaZ2DizI2XHJIFCO3R9xSwCWErm0
 Veok7GkGvaf1ZaWsbm58BjFDKmNO0QW7VQbGK2OylGry81YPzyrOZ8ChIjo/HRyHe/9w
 5W1ZydJDWdl05T2eFpBCbGFQxlo1jPJTBlIId49ZIYuUpBFgGDUgVaClVnykwG8QuPzB
 nC4EbmZxgrZFm3oplSADQENMQ0nW4FYpTlo34zSTxSysd6qLFggv1PHFHIX8PK396mu/
 FbMBDk4met2+Xkk5mbADRvUfFR6JZrioG9W0enUtz4GGnhZDHtRRx0/+fUfrAcJDdTwH
 1hAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=MHQW4be184f/yf/1QbvgrnCI9Q3h1KDp0e7s5WvOx80=;
 b=Fl6o4/iADmYn+mzc7RxIev6o1fmke2onUg3ook/Oz+U7iy+nYTDf2usi/xYLPbKy+q
 iiOca5pwRvIL8Hg0SHIpTEKeBZfa8m989WC0cy3Gv5FqIs4sCc8OyCyAzABWnzXLD4ZN
 rvolHKc9w1LFDaWfIDBzNmHIdMqpDlClOB2XcqphEhGzyUtRb99eD27egEUENHMf41oI
 MT6R7fuPxoDfK+qmuS5ww2zQcGYdYCy/5c0y3UwcrEDRMwuYNwYFvD6QVGT0qlf9YFE/
 2heruswWcl0lbiApK7B9acp8ZKE174gqT4X+XTWi4wVYKzu1WK+iOe6I/sdeY+y9n5bU
 uiOQ==
X-Gm-Message-State: APjAAAWyx0lTWyplM5Aq1K1vpauI0Ij4M3K/V4THYrpBN+d7u83PfDQU
 nzSRbYkYJPSup3rSwEIJDq+ITZ//UsA=
X-Google-Smtp-Source: APXvYqzcC8oy+td3BTTUw+K1ObFMNnlnH7pe6d915LO+YFlwaA6F3N3fqTSMgG+B/hT7n6lxTQThDw==
X-Received: by 2002:a17:90a:dc84:: with SMTP id j4mr235074pjv.70.1575913387367; 
 Mon, 09 Dec 2019 09:43:07 -0800 (PST)
Received: from localhost (66.sub-174-194-147.myvzw.com. [174.194.147.66])
 by smtp.gmail.com with ESMTPSA id k4sm106115pfa.25.2019.12.09.09.43.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 09:43:06 -0800 (PST)
Date: Mon, 9 Dec 2019 09:43:04 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: RISC-V v5.6 patches will be collected by Palmer
Message-ID: <alpine.DEB.2.21.9999.1912090933500.308630@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_094308_313631_311F86A7 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: palmerdabbelt@google.com, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Folks,

Most of the backlog of the RISC-V kernel patches from the past few months 
have been cleared, and now Palmer has graciously volunteered to handle the 
patch collection for v5.6 and to send those upstream to Linus.  

I'll continue to handle the v5.5-rc patches and pull requests, and will 
try to take care of some of the patches that have already been posted.  
Anything that doesn't make it will be handed off to Palmer.

So pretty much any non-fix patches posted from now on will go to v5.6.

If anyone has any questions, feel free to discuss them here.


- Paul

