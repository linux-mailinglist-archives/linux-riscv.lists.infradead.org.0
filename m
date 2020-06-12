Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDA91F756A
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 10:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1ZOsGv1to/fijtOFBQH/Co0zhQGrwmRxB11VS27wOQo=; b=aTb
	11MsWPUxISCwR9Le7iX1s9n2QVVbmmwN1/O/BgMRWrG7l3uy6IUF3RrmJluDfJDXjrzumGpSk4gPL
	Mtp4CmcmpsFAD7AXAK6INbzG462OJKH1dlvpoyCGeeuy6ZScjJE2iRzJ44URPyPdtf2Y7YoM4bl51
	HsOwcrdblq9qvjYiSsBf62DXrrio8LzD5lPWxY9yb+qRFrq2ow4YVhvPeW6i/sh+0+6lyjxaHG4op
	oNF36pnaegaYNg//9dpxhKHJ67U2zceuAhjxioduuopRp0rVzXzP2kYzzZ+sJBokz/ZceoFS3P/+h
	WgykN8GDXSxq4R56yF38gWiDIYDxh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfI6-0003tb-53; Fri, 12 Jun 2020 08:43:58 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfI3-0003t4-2o
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 08:43:56 +0000
Received: by mail-ot1-x344.google.com with SMTP id m2so6752710otr.12
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 01:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=1ZOsGv1to/fijtOFBQH/Co0zhQGrwmRxB11VS27wOQo=;
 b=oPP7RTrtvCjmL2GEAMFJqtpfk9DxEV197tH7qK1qY7ayyFb6Lqzx8geV9GeLEamTKR
 doYgAeTACxBEFoWHI3+ripH2Snn7RcY1hnskceN5VqU3J8w+SQNZoBBKC2r+WqN5ncns
 Z2207bLHHnH8vkUxT82BsqFXM06HssZLamaKhsXS0BiOCAzgGf4N9KRkKX5Y0IZj8Rje
 8W11hkc9mMxhX+sI8XosQcPwMb3KPFXHzr+NSARdyz+qP1vWA30+wCdOv41bGCcDPYdT
 ZVt6pteF66z8IJqgEvw7VoPlW4Wup8e7dme4B2m6MV9k3PdTT3MIh6bIVNO6bqd397jI
 e2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=1ZOsGv1to/fijtOFBQH/Co0zhQGrwmRxB11VS27wOQo=;
 b=g86sNJ97tLkyxsT3O1KSdmjUvK1pHiATirJTEM2ZFOeUFX76hUlcErnOXKn+Mx36M2
 GPt2eJ5coNSQGtabsOGhP5SdGN3eWyf1GDqETPTKWm8QmRCkF4zTPss0yu4QwY4apSa6
 S4/hKW0DRYDfdeQycJ/cw/wsWtXWQ1Zf/Tb3aBCOUNYWqSM6PHJ0xUV2NztkkKCdHaN0
 0JLdM1hu6CYdWgFD8X+r2nM1TACsfliut5F5eVJt9ghUKVzgzuSj1ejFNfjLT4y6mdsB
 4hN85E5TUId/LMfXhoAdXCuMXId5YByYK1RCMIYcVXmxWd3qzaxbOcaokvXB8ASTzRMb
 FiYw==
X-Gm-Message-State: AOAM531Pv49qjGz4GVkQ+TR7dQYxTCswSjF98wkZqpyPBjCenuOIZZuF
 m5wbF9HMsy/j/qro2jMu6Xc=
X-Google-Smtp-Source: ABdhPJyiYhxUlWZhg2LuWdDrNS+cMzjj8JZBuORVPYT0uY6E2Lb/Alsp4Bk82spjeohRalNrJzn9eQ==
X-Received: by 2002:a9d:32c3:: with SMTP id u61mr10460154otb.170.1591951432603; 
 Fri, 12 Jun 2020 01:43:52 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id e25sm1231927otj.73.2020.06.12.01.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 01:43:52 -0700 (PDT)
Date: Fri, 12 Jun 2020 01:43:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: Upstream binutils commit a87e1817a435dab6c6c042f9306497c9f13d4236
 breaks building the RISC-V vDSO
Message-ID: <20200612084350.GA1108986@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_014355_140922_2F134EF3 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, Fangrui Song <maskray@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

Upstream binutils commit a87e1817a4 ("Have the linker fail if any attempt
to link in an executable is made.") causes the RISC-V vDSO to fail to
build properly (it is fixing this bug report:
https://sourceware.org/bugzilla/show_bug.cgi?id=26047):

$ make -skj"$(nproc)" ARCH=riscv CROSS_COMPILE=riscv64-linux- O=out/riscv distclean defconfig arch/riscv/kernel/vdso/
riscv64-linux-ld: cannot use executable file 'arch/riscv/kernel/vdso/vdso-dummy.o' as input to a link

I do not really understand what the whole point of the vDSO rule is but
it seems like it should be fixed due to this change. Additionally, the
kernel has generally been getting rid of using $(CC) as a linker,
instead preferring to use $(LD) directly; it would be nice if the RISC-V
vDSO's Makefile could be rewritten to do that.

See

fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link VDSO")
691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")

for more examples of that. I would take a stab at it myself but this
does not seem like a straight conversion due to the way the VDSOLD rule
is set up.

Cheers,
Nathan

