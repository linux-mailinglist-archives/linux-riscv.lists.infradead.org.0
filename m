Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604A5B79B6
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 14:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgnxLCKdxqOs4YWEQpBkR3Qm0E7FW1369wgjDiFAxi4=; b=YGYoXgrzUZvKS1
	s5WzOvLQFEnPZRb1RNF7Tqna7ZBBjH+ZSHkl28+WQvk0UXLP3XCSQrnGoLyQGViDC+fab48s3u8dy
	gG140U7cgTTI35w9lyBHS0D2EHa97UeI5yqr46slSgz58+slIGyEl75RmX+KnHwZc/RAcbadAH2jS
	V5PtvrdGWZ449/NphtqWRQjXIPmDXuenPKI1X0fuNvUjKLfchjzRTkf3AOZE0q9S+9GFO5eaR3dMP
	52xlGt9tMPetMo/CnTqh5KIbzcek92JpSSNZlsKq25LVqf2+G/4TMGVBGo7F0oqkPFQwmuvDVm/cC
	yQOvr7J/XVCf43HX8dKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvr0-0004ys-5m; Thu, 19 Sep 2019 12:48:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvqu-0004yY-Is
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 12:48:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id b24so3797765wmj.5
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 05:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MYdRvcf8Wu6iYU4KZrqesPzUMUB/hNH+Kmue7l+9/nk=;
 b=lkBxEenYPb1crgWNgulRmMTbLuL0WwnuqjTIsDC12hH2kru7EDSQgmhOcjfLsS2Jk3
 ABgD54lhrYPwJ800Z35+fP8QMtRKZXHuqqeXwr2cbCjhBMjtfSlu6AfMDeC1g0phOuKo
 47gyysY/XiECljEYQd9XP864CMiha1mPLGIkeYEnk56uFbDwkMQ6ayn9oS1mH4+dRYdy
 lN3VMU4PgKtpMpOdCooXonokznRv/6vO0xAh38wTDy+EXLyi+OEDKD9yyW8DEYOFbGfA
 nqBY3bwn3D/jeQwGX7fQ4W2tt5Kf9zwXK7Aou6Uv8EIY96Pp6myOfVEzMHnb2EONUSQq
 +tvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MYdRvcf8Wu6iYU4KZrqesPzUMUB/hNH+Kmue7l+9/nk=;
 b=bD0HXfcQI46Z8xgq7Jg8zFvvxc/EHoExwphmvUVMvuwuFV3oTU78f6OxydUfEpz6zM
 KDUGXyRa1Cf1U/pRki7C0H/8EqTLJykT8IBXQoVOs1ClE9xA1QPXuenxcEM2P47q+9Tz
 kbEW23DWz3KcueamNdhD9b5P8NOabzfziLc2+PxmAslz0jSQKX/JgE32KpIo2f4vaJl8
 Hot+UmkWhbAHJT2tfYGQnm4mLQw85HLeioFsd2W6ue7Ho6A6OSxvnfeia7K0884xbdnE
 Sb9yP8OJPe6CgX4ipCfRca4HDbqcN1dq/g+HLy4RTC71AMAHUa/eOWnCFO0SQzjoXeCG
 MFDw==
X-Gm-Message-State: APjAAAWNUp5QJezIQHBgUax31oH9/gKtD+0n86RGrMqhbrMHzskZ9czJ
 qcqVCtWQB2HyL2bUg4YTczCG9g==
X-Google-Smtp-Source: APXvYqydehwYm+ahwWpH/f3NBX2IBYskx/Tbnvs3t7TW+OqeIpe325S9YIiHJ4OAPKbXggjNHdT+XQ==
X-Received: by 2002:a1c:9d15:: with SMTP id g21mr2864034wme.96.1568897282781; 
 Thu, 19 Sep 2019 05:48:02 -0700 (PDT)
Received: from localhost ([109.190.253.11])
 by smtp.gmail.com with ESMTPSA id p85sm12581592wme.23.2019.09.19.05.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 05:48:02 -0700 (PDT)
Date: Thu, 19 Sep 2019 05:48:00 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] riscv: dts: sifive: Add ethernet0 to the aliases node
In-Reply-To: <1567687574-22436-1-git-send-email-bmeng.cn@gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1909190547110.12151@viisi.sifive.com>
References: <1567687574-22436-1-git-send-email-bmeng.cn@gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_054804_638832_C5167613 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019, Bin Meng wrote:

> U-Boot expects this alias to be in place in order to fix up the mac
> address of the ethernet node.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

Thanks, queued for v5.4-rc with Christoph's Reviewed-by.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
