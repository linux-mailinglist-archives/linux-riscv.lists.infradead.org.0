Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AA1A4172
	for <lists+linux-riscv@lfdr.de>; Sat, 31 Aug 2019 02:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynSwWy+6zYfkLXUTJ/YrwClUys3y27YxJYRFaVs05Zg=; b=RF6xXQFboYmLyw
	hu5sN8NFU77LczafW95nz0fIJwuoT5SJFXOiq1gjphzos8MDuRfl7r5So/mq/2uAw2R5EVS5ywrwV
	3Nv0IeWD6o8cogbbt5cMVDZs4oTYgZgDTevzbyI5PKAFe7hj+5QULB+kgfZwY45nMrb+TMTa4U64z
	PRXbKzVoGshIjcLcpjsQYh5mzfCUzxBIWo8yOvxovSk6L2nrj7fnAUrZzpCIaD0PyHBBKue02mfsM
	/kquv6tZr29rnrNtKWxD23IvT85dSMDg2bKvH7Esqq/5MeyDNDnQdS5bVLF1bDt+tc1BS9iBrdXlc
	tMJnq844Z6UhklZ/gq8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3rbm-0000rP-JB; Sat, 31 Aug 2019 00:51:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3rbj-0000r3-4F
 for linux-riscv@lists.infradead.org; Sat, 31 Aug 2019 00:51:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id n4so4350261pgv.2
 for <linux-riscv@lists.infradead.org>; Fri, 30 Aug 2019 17:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=1wQe6nOU+rm8Hxhio/8zXXhtjYpsRY4PCoDEXh11uU4=;
 b=Z6QHLAgjM/qzsYesJS7JVXGXYcDJmCI28hBN9xNL0wH2Zpefv8aVty2b0WGbuVPeVd
 w6XEzfxm987SdrLAui97QupWlgcfvsUyAmMrPDESqNxpdWl6YcbDo3dZu4zQTzjARYDT
 wIgqLzV+q51DbUAFcmoyncxzXhN6T9gpFpHYBr0BaKpdrYNx2Ly8ppruAspzvLXKLRQG
 Ij5i69SJPa+t1/exPKJ46wO54H7LPJ4r2aQ6uwmo7mrv+VRgCGbFL38nqixK5YmkEgLt
 m9eEJptb2r6qlMGxfYyTq7NtJvTevRHwuKAuiN/RpyjFIwS7BM/YP40Oicdijw3RljG/
 wIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=1wQe6nOU+rm8Hxhio/8zXXhtjYpsRY4PCoDEXh11uU4=;
 b=RVVowNRyBf3s+f8puEmfALAOUDiPhGR3VEn6jqRLmVTddshLJtENwm8mL+bOUCSrxF
 qB4uaOXd//aS7rENRc76OZhvooeO4xdWYJmALwtAUzzeOQmmD9h8Ia38yiVBA8z53y/M
 4w2udFJjiMhIgwb6lobt5Y0KLYgF957orTek/CGsalAy/AVsNUP/HVf72HRuUjbhr7kw
 NVeXjfoTAqWwjFHTF0xdUE+SkhnDRBBfzUZ5B74RMxc3jNnG9xFwTHjx1cumYDVTU58i
 dWctDFEtpoeafPFr9lEwNKwIfCqZVNOzG/7COKOkPnqPmBk7m63Brds/tKZtgv0sRY5O
 +trQ==
X-Gm-Message-State: APjAAAXP+RjqwVFquv9COG4v/KE39nM0jQ7vILTZhi7bB7FOFUN9TjFW
 0L7zboU2KaHMpL+UdDzMXJRCXg==
X-Google-Smtp-Source: APXvYqzbEbim+0Iu1USz/ypElWV0TkMQXJw+Fa4PDaeM5FvZyrI/nJdpLnxouqdSqHdj9yMeReJyew==
X-Received: by 2002:a17:90a:be06:: with SMTP id
 a6mr1305657pjs.92.1567212669878; 
 Fri, 30 Aug 2019 17:51:09 -0700 (PDT)
Received: from localhost ([76.14.1.154])
 by smtp.gmail.com with ESMTPSA id 138sm8932171pfw.78.2019.08.30.17.51.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 17:51:09 -0700 (PDT)
Date: Fri, 30 Aug 2019 17:51:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] riscv: add arch/riscv/Kbuild
In-Reply-To: <20190821092658.32764-1-yamada.masahiro@socionext.com>
Message-ID: <alpine.DEB.2.21.9999.1908301748400.22348@viisi.sifive.com>
References: <20190821092658.32764-1-yamada.masahiro@socionext.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_175111_234364_0C900EEB 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Masahiro Yamada wrote:

> Use the standard obj-y form to specify the sub-directories under
> arch/riscv/. No functional change intended.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Thanks, queued for v5.4-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
