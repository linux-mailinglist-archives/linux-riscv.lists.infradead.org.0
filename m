Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67251EB6A8
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 19:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SDD6PncNB5qiquLb0TPh8/zv82SwulsdDuzwCifoHv0=; b=SB8vBm54K7lgAj
	eq3gsNrB5GCUpyWolWIuxKMnmSscxzy4YS7L6AEBYa7AjY48PJzXozzrLCvu673WCWRaWZAuKaXDm
	6f0NUrJlDrDBHdZNxsKo5bO2OtS0atRxZKzK8bQ39OFc7ywxFa4nBTzYQXhCyavCqVU8vP8E3tZY+
	X5vY1HtruKtNSh3mCh/AZx6gPZkUWavoW1b9LejMPGVqwEpc4/hKmu2CqCcHm+VxbmdIyRXkFQkYf
	WfdDD/tQd4J2Bo906D1HAzzK1i1gAK2ZDAaEuwai/Pt32Oa8QniipT/J9tgE9UX6NVRgb3VvYi8r4
	VHU5nyKW4LT/I13whuow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEvO-00067m-UY; Thu, 31 Oct 2019 18:11:58 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEvG-00061e-8O
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 18:11:52 +0000
Received: by mail-il1-x144.google.com with SMTP id f201so571697ilh.6
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 11:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:subject:message-id:user-agent:mime-version;
 bh=JeHMqQMHRlzdofeU2AdLK6H9sE5vErvTPI+fNaT6Y0Q=;
 b=anCtXI82wK2UYEPPyRk5cY3/0+UoUebNbWYGfvquIFrchuvys1eXNpeGssCuNOuXiB
 V8edRxmRSVOymdvyC7ujydYNOO5GRQyBJpnfd7uaQcBAWIjFq8jOemykFmWB0NgzaFul
 L4hZN9Fg4J+W/C5bWLTW0QbGfuiSwDhEUmXmqEkzokA5O0rKuRK9+nUcTDJE0EoBGUhB
 8qqKipPVNNjwcnR7+o6MWcmAFCETfcYyepmcZzvVh67GVLil0tDbgenMriCfHyFaXPri
 9hCOC3OlJg60Y+s7S3PSh640eb/Cd6fmI2GC3XBuhoRn3+H+lXR9VEG6iPDBkY4WAtO0
 rIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:user-agent
 :mime-version;
 bh=JeHMqQMHRlzdofeU2AdLK6H9sE5vErvTPI+fNaT6Y0Q=;
 b=SChdr+5fSDByYXjU7G6eOmG/jvwviFhWxG09IZ6exkW5Vy4LL1Od1QvNzZdn0JvFwH
 OLCCmnpFsEhtFnMe8UoHTZyrlz8tlSFsyW3kHyc6R9A6BubWW+/g0NYhYnFyZsvmghF6
 z7/RU3LTWezva3NP1SgDJ2V1JJZTWqDjHdE6p0O4j0dEgOOjsEr1AtOuwpcLxs4Q1YFJ
 SsgHoGWOKTgVr8zb4H960A2KiVwnvQ9bwIyy0S91RzyzENB4ARMD4mF1R4k3s0WZImDd
 EHftIV7Psd8a7VRZOBNO94jWt9WVbX9Q7oQ/FpdOu9PJtJ4TqL5WkQ9MHJOLlnvd2I12
 PTLw==
X-Gm-Message-State: APjAAAUDEUFU69nQLadF5U4hLOC+rZr2mEzLWXbAkwky41/awlcottpI
 U3TGTjUij9tOGE0Y1LF8jPMvq3LlC7o=
X-Google-Smtp-Source: APXvYqypiIVcNe2fxDkPHBMejVDwtiPlqOnogYhZrVIHC6A5lLdaJzoF8cGyLcLerCEZA9Hu2nF2iw==
X-Received: by 2002:a92:4609:: with SMTP id t9mr7160801ila.156.1572545508348; 
 Thu, 31 Oct 2019 11:11:48 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id d197sm363664iog.15.2019.10.31.11.11.47
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 11:11:47 -0700 (PDT)
Date: Thu, 31 Oct 2019 11:11:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: Experimental branch
Message-ID: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_111150_495170_3716C4F9 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Hi,

There is now an "experimental" branch on the RISC-V kernel git tree:

  https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/log/?h=experimental

This branch will contain patches that have been posted to the list which 
are getting close to being in shape, but which are not yet ready for 
merging.  It's an unstable branch, so don't base any patch submissions on 
it.  The intention is to make it easier for folks to see what's upcoming 
in the distant future, beyond what's been queued for submission to Linus.  
This branch will receive very little testing to start, but this will 
improve over time as our automated testing improves.

Right now the experimental branch contains the following patches:

- Steven Price's generic page table dumping code (not yet in mainline, but 
  looks close)
- Zong Li's page table dumping code for RISC-V (based on Steven's generic
  page table dumper patches)
- Anup Patel's KVM patches (waiting for the hypervisor specification to 
  exit draft status, and for reviews and testing)

but we expect patch sets to be added and removed quite frequently.


regards,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
