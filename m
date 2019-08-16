Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FEB908F4
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 21:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMpttDeCgRsKnj4L5hU2eq6viqHZqGnVgCdev+g0ON0=; b=hgWbLSaVN1hUV3
	dtcUXzsFu3oJ6wT/8qQTUiS8/+Knuy9EKJqnkG6p2I4lxYGD5rRagQbDE1d4LlYuv7gGXQvz58id/
	OE9BJ+ZpGmIx8O9+vyt7kANYggCiEB/IU97wT6d3xpld5Py46QMfKc1YpjqdnLRJHtXF0y6sDnnsS
	17Gkks6NG+9DkCldRwEYNpCaBfx4Sdf+sPO6exzxp31IasMtHbL/rFf+l/k84AF8zoo6e+kk3Jda8
	GUknpMewx0jZVuIPrXGgpkMVs0gpczhlWJnQYl6AGuqdRdm8PFvesLLDJNYs1hNPK1ycgWpolNCrW
	A1yjwoI6F4A8ucDef/Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyiFQ-00039t-Cr; Fri, 16 Aug 2019 19:50:52 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyiFM-00039a-I3
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 19:50:49 +0000
Received: by mail-io1-xd34.google.com with SMTP id j5so8552480ioj.8
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 12:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ONmXDIuNzqxdi+K97+GLTBz35xCP5n9Rpwaa6NR4X5Y=;
 b=VNXcHJj88JMFq9KE744X5PtYUIZR1hoxfNMb+IClS7AMdtDL2fxI1BJh7OOYf/Yt8t
 1dOq+un9FCmneTtcaBN69a6rXMJ3BJ8DmXEPTwAijWMrIvgOmEb5DtdzA4DNmZc+4s8S
 gn8MhTdmYCmOIeAD2IN0tep5IDWASsREUFXKtzA/WT3jS9h4QJ2qixSwyvp6xOPKl5nV
 EPW6K2W8s2D2IqeKBwNrphryDgMZBVNuxSMjANFETc6IRIQ7e6Gs/iswlGsFoDCSaWRW
 DPJ5tKhM4/NKFoX0cFHaHtahMbAqs5CCla9PgtnYJxBLhuA83ulK4yXp944H38TxbY5g
 1SUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ONmXDIuNzqxdi+K97+GLTBz35xCP5n9Rpwaa6NR4X5Y=;
 b=nyx7fZaYpUZyRjdLndCHmGGKLK8I/G2zA6UhPaCLux2YAsfWK1K/C9l6P+w8lk/yiQ
 Nexz97rmaEB4D+FHal4Dh+g6wZcwOOUerVBrwS+WB2eDg8pihHzGJciPDx/PR1i+ehkT
 4JJp5x9ZS2dZTgJQbGj8T09+aHupTQ9rubEnUCnQ/Gn3UgohM/R8k3Zs+G7novztM6dt
 UTm4ozAOTJleVXK/psZFbn3VBzKRSKWrdqBSSZfKrneJKQf5AEYnbm7pzRPm3zpKxSWB
 Jom7CBw6rVrnFQzFutAwc4S4waplisomQ5mo9N248WRpMwvF2iH0fg3LQ0TxWc50N3C3
 1fMg==
X-Gm-Message-State: APjAAAVqdvT/FIOguyTRVtp8s4dEZ+tpDIgReZlBOXz9TyaHbaOclP2z
 ltaX1eDgzrhzEfbr+MwvPEWhYQ==
X-Google-Smtp-Source: APXvYqxw5a4Xhc3YqX+G5NkX3dJZLdeC1f5dYjeMdNRatyDh9AdvjMZRqJyAyPcKww3csdyckiDoWQ==
X-Received: by 2002:a05:6638:627:: with SMTP id
 h7mr12815495jar.33.1565985047069; 
 Fri, 16 Aug 2019 12:50:47 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 i4sm4807204iog.31.2019.08.16.12.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 12:50:46 -0700 (PDT)
Date: Fri, 16 Aug 2019 12:50:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
In-Reply-To: <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908161221010.18249@viisi.sifive.com>
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
 <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_125048_628307_A404902B 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019, Carlos Eduardo de Paula wrote:

> Got it, just to be clear, the sysfs changes only work on this 5.3 tree
> and patches right? Not on my current 5.2-rc7.

Those three patches in the branch that I sent you seem to work about as 
well on v5.2 as they do on v5.3-rc4.

v5.2-rc7 by itself won't do anything in this regard.  Those patches (or 
ones like them) are necessary.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
