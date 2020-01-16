Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCAC13D238
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Jan 2020 03:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZMxDPPtpfyDr16DAViPOjphNjCxUKCyR951nmWvnX+0=; b=cq84DwgUpL5++HFStUIoeYKeC
	kuDLO61oyShtVi4D7NiIFwR9Fdhi3nTfspTbOGNRoM/UiPYaAaP3kehYvEqp/RFEO6gmTu8nvolJ/
	n/ojF62ym2C7xd8x3MDijcpuXuZBG1Wv5I0eoAL8KNX6CMpHnbiJXT90hHXFaht+Q+DCxcY49RscS
	/g4TyUvw328PtuRL523crqsngkN+rbPHJqnA2GipIIvHdglxMmDDjU9foIeJsPPpjpgb4+YlBJI7S
	NnrISnxqVATGpHr/1196+gHDUEvMmYNJgjI3rShA0F3YeedzjfGuOhlYZqOi6nQY5QRjFnfq2gtoF
	Ruq9kykMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iruxy-00038L-Dy; Thu, 16 Jan 2020 02:33:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iruxv-00037V-Lw
 for linux-riscv@lists.infradead.org; Thu, 16 Jan 2020 02:33:01 +0000
Received: by mail-io1-xd43.google.com with SMTP id c16so20064152ioh.6
 for <linux-riscv@lists.infradead.org>; Wed, 15 Jan 2020 18:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZMxDPPtpfyDr16DAViPOjphNjCxUKCyR951nmWvnX+0=;
 b=RqbHK8VoNCXEI+hIdHVL/MC88sR1q4OPTXukFJTkCL/S7mLSBkvaWjPbEO2L6KiNFE
 FhJusyzBBdV6kQ+a+YlTrvqU1YKNRBO4mhi1ULYHYxGkptEAQoBXJsH3mv+FHZHbmjUA
 lwLqyjkVstTa24clYlsBGKvyucNtx5Vu6wGV8j+2BRaOcMvQaU0kKYIPj29mQIn+/36R
 0NiXjAbEOA0a3MXvPd8ZyKRp5YExsJTzMX6AD+vrtGPu2uRtZKQQS4IIkgAk7HSgJtC8
 tVDjeI9PNc+AZ/kdpwMMxAEqhSUELgnJcgLO+//z3PFC0Cx1sEcLfqiWo4CIiUoIzZFy
 uz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZMxDPPtpfyDr16DAViPOjphNjCxUKCyR951nmWvnX+0=;
 b=OckkUsCNMtGvUhBwy/RHCEyDTflL3TlyyLQ0eDKHeLqOiRgOYR8zlpXUc6LBN43QU4
 cW9MDpGf+B6Ny0eNIJBadohCV0VQ0q1qGiznEYgQrgsT/MKFuIpWm9cCuIjtEkZHxX6S
 56E/xaxzgKLIU4LXfxXNnOe2zJh/dhDyFVwhPeopYyYIPoYMdDBBBMQ4R5bkISTLjB6K
 CHZAnvK2qtppNvUHd3e7bxkb4C/rIY4IMCcMk26/nulgyZLBK5Zed4OZdV0py7PGtCTb
 +8qOKO9w/RjAqpKDa0jCDx8FEubq1xFMSOgk2anNIvE0A5Y7MDPc5VznMGYpVXEi2CN7
 4BoA==
X-Gm-Message-State: APjAAAUKWwYCbkwo/5sc2ieFtShPYRWOu7THzeG9DTL5TsRWjRRRgoLJ
 O6QXMKqM5lCFnSebJZ6+wKO+sg==
X-Google-Smtp-Source: APXvYqyh+g2Hzupz8itLKiU78z1Ffu3lm87KUi123IE5FELOjy2k517AvOgTd2cAPDjAJzP0F4bC4Q==
X-Received: by 2002:a6b:e004:: with SMTP id z4mr24598779iog.235.1579141978190; 
 Wed, 15 Jan 2020 18:32:58 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z15sm6458956ill.20.2020.01.15.18.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 18:32:57 -0800 (PST)
Date: Wed, 15 Jan 2020 18:32:55 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Greentime Hu <greentime.hu@sifive.com>, anup@brainfault.org
Subject: Re: [PATCH v4] riscv: make sure the cores stay looping in
 .Lsecondary_park
In-Reply-To: <20200115065436.7702-1-greentime.hu@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001151832001.98477@viisi.sifive.com>
References: <20200115065436.7702-1-greentime.hu@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_183259_931262_E469B719 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
Cc: schwab@suse.de, linux-kernel@vger.kernel.org, palmer@dabbelt.com,
 green.hu@gmail.com, greentime@kernel.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020, Greentime Hu wrote:

> The code in secondary_park is currently placed in the .init section. The
> kernel reclaims and clears this code when it finishes booting. That
> causes the cores parked in it to go to somewhere unpredictable, so we
> move this function out of init to make sure the cores stay looping there.
> 
> The instruction bgeu a0, t0, .Lsecondary_park may have "a relocation
> truncated to fit" issue during linking time. It is because that sections
> are too far to jump. Let's use tail to jump to the .Lsecondary_park.
> 
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>

Thanks, queued for v5.5-rc.  Anup's Reviewed-by: has been dropped since 
the patch changed significantly - Anup, if you are still happy with it, 
please reply with another Reviewed-by:.  Thanks,


- Paul

