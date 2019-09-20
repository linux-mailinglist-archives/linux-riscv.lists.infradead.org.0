Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756B1B9440
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 17:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9N9MSYGsvI2qK3qA83kLt0ZAkbnDr5ZRALrj+cF88+8=; b=crmhL+3zz84lyv
	G4BlaIl8aNbKIaypZK54R5xoKU74huyj7bIJ+qmPx7z6o/LhmOLTMzbKVtKZtKpOtYQSFS7NXTjg+
	9VJWXQeo/PK7YI3sVt8EjckJcZIfa03Hc8wgFrne/WWnKh6zhfSqNlFw2a2LtAdFViqh6H41uxpak
	XrG9Svf7OfvBYlMaEvN/oJ3tjWQVECw9wnHkwRXVpkcPZTxbj0DSLG51unVnpC8F2tJUrdBlZWVoS
	38Yz7MG/J5u2CZy/leZ83c34OZbdG5Z4XrS6hNFRG51H6P2b7o3wLn0NLuHedySLzjjyJZXi2bT/F
	XxGLPuIAB0GIAkg9DGkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBL2Z-0000As-Fe; Fri, 20 Sep 2019 15:41:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBL2W-0000AY-Gc
 for linux-riscv@lists.infradead.org; Fri, 20 Sep 2019 15:41:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id y21so2736583wmi.0
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 08:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Xv40uHTBnQKi7ek6wxrI7XSP2Xg7D4dtkThas3W0BIA=;
 b=DE9rGtF/QU58K8xulSxPWbvJ2lzUeXxbsZ2GKcFJSBKusu1CmofbZxSz2wnVQ+ywTq
 kYbdol8Qp1+cNoA0Vwi2BxL5Drqf021jPLmMdFN0vYrwDlCDQWNB15w+GMAs/+5X0HFr
 dEXLUk3YFQbUi0zoEHYujgon8JhsgFivu1lYCGmmaXuhNMFSCxPkA7RpAN+6XFulLeO6
 Bf9L8hJBUfZ/83TBpb+8UwKT9q+i0yXQRm9JV3X+P88aX3S+vlvBt49cSLOzn1GYTHsm
 m9D+vjtQZo3AE2yhxjxA4gptGaN6v5ca6JLBNb+D8fdORJeX2Vm9F0ZhXHXCg10xKcxz
 Qlxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Xv40uHTBnQKi7ek6wxrI7XSP2Xg7D4dtkThas3W0BIA=;
 b=cH+cQftq0Ds9pA5+OjOXuHDuODQWE1A3g+HkMyVo7GCHapkYNl5EKbxwdXSQZxmygU
 +0T35Z6tbikG3Rjn6djCQa5wjiX6C0gv1PfffUZSPDaLZLZz9Zk1zyX/gANWekfNtrN2
 MYUhgKQ5MjnVeDyleQCsEZQparrfN/IHq/eg6hB6l8dmk0VQApd1yXfoMdKTS3BOax85
 qK1SoO1Otu6SiWLvnz0+YHUy8sOfUdo1A+CwUhUrfaBR0bENn9gkBoCbJGe00YNoNPA3
 Ennnc/sjKcBcMU7r3+ggHquC/TSkWWAnYcSFX0zpRM8E46LFvy6dcZ78r+GAPHQyWdQv
 V+Dg==
X-Gm-Message-State: APjAAAUrqfYH7SmjPhttjAFwy8PJxFk1Ls7O1NIFcZ1BTll/r4VPykjC
 lFTgRgJfySz39J63bmhS8eaMLw==
X-Google-Smtp-Source: APXvYqx0L/7KeU2Qshq4qSA1RuWSp0Tp1zwhgcXLHjMp7WemaABMruhTDWLceD9B42F/X/UOftL8Mg==
X-Received: by 2002:a05:600c:294f:: with SMTP id
 n15mr3929123wmd.157.1568994102404; 
 Fri, 20 Sep 2019 08:41:42 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f83sm3231184wmf.43.2019.09.20.08.41.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 08:41:41 -0700 (PDT)
Date: Fri, 20 Sep 2019 08:41:41 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH] riscv: Avoid interrupts being erroneously enabled in
 handle_exception()
In-Reply-To: <1568623661-16779-1-git-send-email-vincent.chen@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1909200841300.10826@viisi.sifive.com>
References: <1568623661-16779-1-git-send-email-vincent.chen@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_084144_586677_EC702A3E 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, 16 Sep 2019, Vincent Chen wrote:

> When the handle_exception function addresses an exception, the interrupts
> will be unconditionally enabled after finishing the context save. However,
> It may erroneously enable the interrupts if the interrupts are disabled
> before entering the handle_exception.
> 
> For example, one of the WARN_ON() condition is satisfied in the scheduling
> where the interrupt is disabled and rq.lock is locked. The WARN_ON will
> trigger a break exception and the handle_exception function will enable the
> interrupts before entering do_trap_break function. During the procedure, if
> a timer interrupt is pending, it will be taken when interrupts are enabled.
> In this case, it may cause a deadlock problem if the rq.lock is locked
> again in the timer ISR.
> 
> Hence, the handle_exception() can only enable interrupts when the state of
> sstatus.SPIE is 1.
> 
> This patch is tested on HiFive Unleashed board.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

Thanks very much.  Queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
